10 rem init screen
20 print chr$(147)
30 poke 53281,0
40 rem init variables
50 sm=1024:cm=55296:npv=0:ppv=32:x=0
60 poke sm+x,224:poke cm+x,1
65 rem main loop
70 get a$:if a$=""then goto 70
80 if asc(a$)=29 then off=x+1:gosub 1000
90 if asc(a$)=157 then off=x-1:gosub 1000
100 if asc(a$)=17 then off=(x+40):gosub 1000
110 if asc(a$)=145 then off=(x-40):gosub 1000
120 if asc(a$)=32 then gosub 1200
130 if asc(a$)=81 then end
140 goto 70
1000 if (sm+off)<1024 then return
1010 if (sm+off)>2023 then return
1020 npv=peek(sm+off)
1030 poke sm+x,ppv
1040 poke sm+off,224
1050 poke cm+off,1
1060 x=off
1070 ppv=npv
1080 return
1200 if ppv=32 then ppv=81:return
1210 if ppv=81 then ppv=32:return
