import re
r = re.compile(r"([A-Za-z0-9]+)\[(.+)\]")
s = "PEQ1Chan - Single Precision( 1 ) : Gain10[ 0 ],Gain20[ 0 ],Q0[ 2.5 ],Boost0[ -2.5 ],Frequency10[ 1600 ],Frequency20[ 1000 ],Ripple0[ 0.1 ],Active10[ True ],Active20[ True ],LowPass10[ True ],LowPass20[ True ],Bypass0[ False ],View0[ False ],Type0[ 0 ],SubType0[ 0 ],Gain11[ 0 ],Gain21[ 0 ],Q1[ 0.5 ],Boost1[ 7.5 ],Frequency11[ 10000.7 ],Frequency21[ 1000 ],Ripple1[ 0.1 ],Active11[ True ],Active21[ True ],LowPass11[ True ],LowPass21[ True ],Bypass1[ False ],View1[ False ],Type1[ 2 ],SubType1[ 0 ],Gain12[ 0 ],Gain22[ 0 ],Q2[ 1.2 ],Boost2[ 8 ],Frequency12[ 700 ],Frequency22[ 1000 ],Ripple2[ 0.1 ],Active12[ True ],Active22[ True ],LowPass12[ True ],LowPass22[ True ],Bypass2[ False ],View2[ False ],Type2[ 1 ],SubType2[ 0 ],Gain13[ 0 ],Gain23[ 0 ],Q3[ 1.41 ],Boost3[ 5 ],Frequency13[ 500 ],Frequency23[ 1000 ],Ripple3[ 0.1 ],Active13[ True ],Active23[ True ],LowPass13[ True ],LowPass23[ True ],Bypass3[ False ],View3[ False ],Type3[ 0 ],SubType3[ 0 ],Gain14[ 0 ],Gain24[ 0 ],Q4[ 1.41 ],Boost4[ 5 ],Frequency14[ 1000 ],Frequency24[ 1000 ],Ripple4[ 0.1 ],Active14[ True ],Active24[ True ],LowPass14[ True ],LowPass24[ True ],Bypass4[ False ],View4[ False ],Type4[ 0 ],SubType4[ 0 ],Gain15[ 0 ],Gain25[ 0 ],Q5[ 1.41 ],Boost5[ 5 ],Frequency15[ 2000 ],Frequency25[ 1000 ],Ripple5[ 0.1 ],Active15[ True ],Active25[ True ],LowPass15[ True ],LowPass25[ True ],Bypass5[ False ],View5[ False ],Type5[ 0 ],SubType5[ 0 ],Gain16[ 0 ],Gain26[ 0 ],Q6[ 1.41 ],Boost6[ 5 ],Frequency16[ 4000 ],Frequency26[ 1000 ],Ripple6[ 0.1 ],Active16[ True ],Active26[ True ],LowPass16[ True ],LowPass26[ True ],Bypass6[ False ],View6[ False ],Type6[ 0 ],SubType6[ 0 ],Gain17[ 0 ],Gain27[ 0 ],Q7[ 1.41 ],Boost7[ 5 ],Frequency17[ 8000 ],Frequency27[ 1000 ],Ripple7[ 0.1 ],Active17[ True ],Active27[ True ],LowPass17[ True ],LowPass27[ True ],Bypass7[ False ],View7[ False ],Type7[ 0 ],SubType7[ 0 ],Gain18[ 0 ],Gain28[ 0 ],Q8[ 1.41 ],Boost8[ 5 ],Frequency18[ 16000 ],Frequency28[ 1000 ],Ripple8[ 0.1 ],Active18[ True ],Active28[ True ],LowPass18[ True ],LowPass28[ True ],Bypass8[ False ],View8[ False ],Type8[ 0 ],SubType8[ 0 ],Gain19[ 0 ],Gain29[ 0 ],Q9[ 1.41 ],Boost9[ 5 ],Frequency19[ 32000 ],Frequency29[ 1000 ],Ripple9[ 0.1 ],Active19[ True ],Active29[ True ],LowPass19[ True ],LowPass29[ True ],Bypass9[ False ],View9[ False ],Type9[ 0 ],SubType9[ 0 ],Gain110[ 0 ],Gain210[ 0 ],Q10[ 1.41 ],Boost10[ 5 ],Frequency110[ 64000 ],Frequency210[ 1000 ],Ripple10[ 0.1 ],Active110[ True ],Active210[ True ],LowPass110[ True ],LowPass210[ True ],Bypass10[ False ],View10[ False ],Type10[ 0 ],SubType10[ 0 ],Gain111[ 0 ],Gain211[ 0 ],Q11[ 1.41 ],Boost11[ 5 ],Frequency111[ 128000 ],Frequency211[ 1000 ],Ripple11[ 0.1 ],Active111[ True ],Active211[ True ],LowPass111[ True ],LowPass211[ True ],Bypass11[ False ],View11[ False ],Type11[ 0 ],SubType11[ 0 ],Gain112[ 0 ],Gain212[ 0 ],Q12[ 1.41 ],Boost12[ 5 ],Frequency112[ 256000 ],Frequency212[ 1000 ],Ripple12[ 0.1 ],Active112[ True ],Active212[ True ],LowPass112[ True ],LowPass212[ True ],Bypass12[ False ],View12[ False ],Type12[ 0 ],SubType12[ 0 ],Gain113[ 0 ],Gain213[ 0 ],Q13[ 1.41 ],Boost13[ 5 ],Frequency113[ 512000 ],Frequency213[ 1000 ],Ripple13[ 0.1 ],Active113[ True ],Active213[ True ],LowPass113[ True ],LowPass213[ True ],Bypass13[ False ],View13[ False ],Type13[ 0 ],SubType13[ 0 ],Gain114[ 0 ],Gain214[ 0 ],Q14[ 1.41 ],Boost14[ 5 ],Frequency114[ 1024000 ],Frequency214[ 1000 ],Ripple14[ 0.1 ],Active114[ True ],Active214[ True ],LowPass114[ True ],LowPass214[ True ],Bypass14[ False ],View14[ False ],Type14[ 0 ],SubType14[ 0 ],Index[ 3 ];"
s = s[s.find(":")+1:].strip()[:-1]
#print(s)
params = s.split(',')

keys = ["Boost","Type","Gain1","Frequency1","Frequency2","Gain2","LowPass1","LowPass2","Active1","Active2","Ripple","SubType","View","Bypass","Q"]

ident_to_param = {}
for i in params:
    m=r.match(i)
    if m:
        ident,val = m.groups()
        ident_to_param[ident] = val
        #if ident.endswith("14"):
        #    print(ident)
    else:
        print(f"Fail on {i}")
    
#print(ident_to_param)
for i,j in ident_to_param.items():
    if i.startswith("Gain"):
        print(i)
        pass
print("".join("%10s" % k for k in keys))
used =  set()
for i in range(15):
    row = ""
    for k in keys:
        key = f"{k}{i}"
        row += ("%10s" % ident_to_param[key])
        used.add(key)
    print(row)

print(set(ident_to_param.keys()) - used)
#foo=s.split(",")


