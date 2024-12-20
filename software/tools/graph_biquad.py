import os
from matplotlib import pylab
import json
import re
import math

master_hz = 48000

jdict=json.load(open("../cheapaudioserver/cheapaudio_ui/public/boot.json"))

r = re.compile("(\d+[AB])(\d+)")

def biquad_mag(q,w, neg=False):
    a1,a2,b0,b1,b2, = q
    if neg:
        a1=-a1
        a2=-a2
    # re1 = math.cos(w)
    # im1 = -math.sin(w)
    # re2 = math.cos(2 * w)
    # im2 = -math.sin(2 * w)
    # re_num = b0 + b1 * re1 + b2 * re2
    # im_num = b1 * im1 + b2 * im2
    # re_den = 1 + a1 * re1 + a2 * re2
    # im_den = a1 * im1 + a2 * im2
    # den = re_den * re_den + im_den * im_den
    # re_fin = (re_num * re_den + im_num * im_den) / den
    # im_fin = (im_num * re_den - re_num * im_den) / den
    # val2 = im_fin * im_fin + re_fin * re_fin
    # val = math.sqrt(val2)
    z1 = math.e ** (w*1j)
    z2 = math.e ** (2*w*1j)
    val = (b0 + b1 * z1 + b2 * z2) / (1. + a1 * z1 + a2 * z2)
    return abs(val)
    # return val

def plot(qs):
    nsamples=100
    dexp =  (math.log10(24000.))/nsamples
    xs = [math.pow(10., (i)*dexp) for i in range(nsamples)]
    print(xs)
    omegas = [xs[i] / master_hz * 2. * math.pi for i in range(nsamples)]
    print(omegas)
    #omegas = [xs[i] / master_hz * 2 * math.pi for i in range(n)]
    print(qs)
    ys = []

    print('-----')
    for bq in qs:
        print(bq)
    print('-----')

    # qs2=[
    #     [
    #         -1.6701692907470849,
    #         0.7637724671804493,
    #         0.0234007941083411,
    #         0.0468015882166822,
    #         0.0234007941083411
    #     ],
    #     [
    #         -1.9805728144381862,
    #         0.9810925819663706,
    #         0.9904163491011392,
    #         -1.9808326982022784,
    #         0.9904163491011392
    #     ]
    # ]

    # qs=[[
    # -1.8666608806508815,
    # 0.9083631951359016,
    # 0.9885405522326086,
    # -1.8666608806508815,
    # 0.919822642903293
    # ]  ] 

    for x, w in zip(xs,omegas):
        res = 1.
        for q in qs:
            #q[0] = -q[0]
            #q[1] = -q[1]
            res *= biquad_mag(q=q, w=w, neg=True)
        ys.append(20*math.log10(res))

    pylab.plot(xs,ys)
    pylab.semilogx()
    pylab.xlim([22.,24000.])
    pylab.ylim([-40,40.])
    pylab.show()

for module in jdict["ics"][0]["modules"]:
    print(module["CellName"])

    for algo in module["algorithms"]:
        #print(" ",algo.keys())# ["AlgoName"])
        if module["CellName"] == "t1_eq":
            basename = algo["DetailedName"]
            keyvals = []

            maxnum = 0
            for param in algo["params"]:
                designator = param["Name"].replace(basename,"")
                print(designator)
                m= r.match(designator)
                keyvals.append((m.group(1), int(m.group(2)), param["Value"]))
                maxnum = max(maxnum, int(m.group(2)))
                print(m.groups())
            qs = []
            print("FUDU",keyvals)
            for i in range(maxnum):
                qs.append([0.,0.,0.,0.,0.])
            for coeff, i, val in keyvals:
                coeff_idx = {"1A":0, "2A":1,"0B":2,"1B":3,"2B":4}[coeff]
                qs[i-1][coeff_idx] = float(val)
            plot(qs)
            

            print("WOOT")
            #for param in algo["params"]:
            #    print("    ", param["Name"])