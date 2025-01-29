****************Table1
reg light distance pop  v2 i.NE_ID1 if  pop<=300 & !missing(TRI), cluster(NE_ID1)
reg light distance pop  v2 i.NE_ID1 if  pop<=1500 & !missing(TRI), cluster(NE_ID1)
xi: ivreg2 light (distance = TRI) pop  v2  i.NE_ID1 if  pop<=300, cluster(NE_ID1) first
xi: ivreg2 light (distance = TRI) pop  v2  i.NE_ID1 if  pop<=1500, cluster(NE_ID1) first
ivtobit light pop v2 (distance=TRI) i.NE_ID1 if pop<=300,  ll(0) first vce(cluster NE_ID1)
ivtobit light pop v2 (distance=TRI) i.NE_ID1 if pop<=1500,  ll(0) first vce(cluster NE_ID1)
***************Table 2
sivqr light pop v2 (distance=TRI) if pop<=300, q(.6)
sivqr light pop v2 (distance=TRI) if pop<=300, q(.7)
sivqr light pop v2 (distance=TRI) if pop<=300, q(.8)
sivqr light pop v2 (distance=TRI) if pop<=300, q(.9)
sivqr light pop v2 (distance=TRI) if pop<=300, q(.95)
******************Table B1
reg light distance pop  v2  if  pop<=300, cluster(NE_ID1)
reg light distance pop  v2  if  pop<=1500, cluster(NE_ID1)
ivreg2 light (distance = TRI) pop  v2  if  pop<=300, cluster(NE_ID1) first
ivreg2 light (distance = TRI) pop  v2  if  pop<=1500, cluster(NE_ID1) first
ivtobit light pop v2 (distance=TRI if pop<=300,  ll(0) first vce(cluster NE_ID1)
ivtobit light pop v2 (distance=TRI) if pop<=1500,  ll(0) first vce(cluster NE_ID1)
**************Table B2
reg light LOGdistance pop  v2 i.NE_ID1 if  pop<=300 & !missing(TRI), cluster(NE_ID1)
reg light LOGdistance pop  v2 i.NE_ID1 if  pop<=1500 & !missing(TRI), cluster(NE_ID1)
xi: ivreg2 light (LOGdistance = TRI) pop  v2  i.NE_ID1 if  pop<=300, cluster(NE_ID1) first
xi: ivreg2 light (LOGdistance = TRI) pop  v2  i.NE_ID1 if  pop<=1500, cluster(NE_ID1) first
ivtobit light pop v2 (LOGdistance=TRI) i.NE_ID1 if pop<=300,  ll(0) first vce(cluster NE_ID1)
ivtobit light pop v2 (LOGdistance=TRI) i.NE_ID1 if pop<=1500,  ll(0) first vce(cluster NE_ID1)
Table B3
ivreg2 light ( distance = TRI) pop  v2  if  pop<=300 &TRI<958, first cluster(NE_ID1)
ivreg2 light ( distance = TRI) pop  v2  if  pop<=1500 &TRI<958, first cluster(NE_ID1)
ivreg2 light ( distance = TRI) pop  v2  if  pop<=300 &TRI<498, first cluster(NE_ID1)
ivreg2 light ( distance = TRI) pop  v2  if  pop<=1500 &TRI<498, first cluster(NE_ID1)
*************Table B4
drop if NE_ID1!=333
spmat idistance Warm _CX _CY if pop<=1500, id(_ID)
spivreg  light pop v2 (distance=TRI)  if pop<=1500, dlmat(Warm) id(_ID)
drop if NE_ID1!=1045
spmat idistance Wmol _CX _CY if pop<=1500, id(_ID)
spivreg  light pop v2 (distance=TRI)  if pop<=1500, dlmat(Wmol) id(_ID)
drop if NE_ID1!=1027
spmat idistance Wles _CX _CY if pop<=1500, id(_ID)
spivreg  light pop v2 (distance=TRI)  if pop<=1500, dlmat(Wles) id(_ID)
drop if NE_ID1!=1253
spmat idistance Welsa _CX _CY if pop<=1500, id(_ID)
spivreg  light pop v2 (distance=TRI)  if pop<=1500, dlmat(Welsa) id(_ID)


