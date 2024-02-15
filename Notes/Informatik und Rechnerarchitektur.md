# Einleitung
Boolsche Algebra
Rechnerarchitektur
Microcontroller
CPU aufbau
CPU Simulation
Arithmetrikeinheit

Mitschreibvorlesung
Keine Powerpoint

Anrechnen lassen, davor ein wenig die Themen anschauen.
Mail an Pizza für Anrechnung
# 15.9.2023
Analoge Zeit ist eine Reele Zahl, daher in der Präzision nicht eingrenzbar. => Wertkontinuierlich
Digitale Zeit ist in einer Präzision eingegrenzt. => Zeitdiskret
Digitale Werte werden auch eingegrenz in eine Präzision => Wertdiskret

Man verliert Details
Bei genug Präzision merken Menschen keinen Unterschied.

Diese Werte werden binär gespeichert
Römischen Zahlensystem => Additives Zahlensystem
## Polyadische Zahlensysteme
Basis r
Zahl n wird nach Potenzen von r zerlegt

Stellenschreibweise
![[Stellenschreibweise.jpg]]
Summenformel
![[Summenformel.jpg]]
101 im Binär System
![[101Binär.jpg]]
Zählen bis 20

|r=10 Dezimal|r=2 Dual|r=8 Oktal|r=16 Hexadezimal|
|-:|-:|-:|-:|
|0|0|0|0|
|1|1|1|1|
|2|10|2|2|
|3|11|3|3|
|||||
|4|100|4|4|
|5|101|5|5|
|6|110|6|6|
|7|111|7|7|
|||||
|8|1000|10|8|
|9|1001|11|9|
|10|1010|12|A|
|11|1011|13|B|
|||||
|12|1100|14|C|
|13|1101|15|D|
|14|1110|16|E|
|15|1111|17|F|
|||||
|16|10000|20|10|
|17|10001|21|11|
|18|10010|22|12|
|19|10011|23|13|
|||||
|20|10100|24|14|

2¹⁰=1024
2⁸=256
2⁵=32
2⁴=16

Bit = Binary Digit
8 bit = 1 Byte
![[Präfixtabelle.png]]

Umrechnen
![[Umrechnen1.jpg]]![[Umrechnen2.jpg]]

r= 16; 10; 2
A = 10 = 1010

\2) Hornerschema
A=10 => Ursprung = 10
2a) Vorkommastellen
nicht gut lesbar
![[Hornerschema1.jpg]]
"Was passt hinein"
1913=>889=>377=>121=>57=>25=>9=>1=>0
1024=>512=>256=>64=>32=>16=>8=>1
11101111001

Hornerschema
1913/2 R=1
956/2 R=0
478/2 R=0
239/2 R=1
119/2 R=1
59/2 R=1
29/2 R=1
14/2 R=0
7/2 R=1
3/2 R=1
1

11101111001

2b) mit Nachkommastellen
![[Hornerschema2.jpg]]
r⁻¹ * r¹ = r⁰ = 1
"Was passt hinein"
0,625=>0,125
0,5=>0,125
0,101

Hornerschema
0,625 * 2
1,25 => 1
0,25 * 2
0,5 => 0
0,5 * 2
1 => 1
0,101

Beispiel Base 3 auf Base 7
![[Base3aufBase7.jpg]]
# 29.9.2023
## Rechnen
Basically Volladdierer.


Grundrechenarten gleich wie im dezimal

r=16
```
 AC*21
158
  AC
162C


 750/A=BB,333333
-6E
  70
 -6E
   20
  -1E
    2 .....
```

## Darstellung negativer Dualzahlen
1. Vorzeichen Betragsdarstellung => signed magnitude
	Das vorderste bit ist ein Sign
	S=1 -
	S=0 +
	-101 r=2 => 1101 r= VB2
2. Exzess Darstellung
	Beispiel n = 3

|r=10|r=2|exzess 4|exzess 3|
|--:|--:|--:|--:|
|0|000|-4|-3|
|1|001|-3|-2|
|2|010|-2|-1|
|3|011|-1|0|
|4|100|0|1|
|5|101|1|2|
|6|110|2|3|
|7|111|3|4|
	Bespiel n = 8
	exzess 128
	exzess 127
	
	0 r=10 => 10000000 r=2ex128, 01111111 r=2ex127
	-128 r=10 => 00000000 r=2ex128, -
	-127 r=10 => 00000001 r=2ex128 , 00000000 r=2ex127
3. Zweierkomplement N2Strichoben
	Eine Zahl N ist definiert durch N2Strich = 2^n - N2
	
|r=10|N2|N2strich|
|--:|--:|--:|-:|
|0|000|1000-000=1000|0
|1|001|1000-001=111|-1
|2|010|1000-010=110|-2
|3|011|1000-011=101|-3

	110 r=2k = -2
	-1 * 2² + 1 * 2¹ + 0 * 2⁰ = -2

110 r=2k
1                10
negativ     positiv
Wenn ein 0er vorne ist ist die Zahl immer positiv
Wenn ein 1er vorne ist ist der immer der negative teil =>Zahl ist immer negativ

-13 r=10 => -1101 r=2 => -01101 r=2

Vorne 0 dazu, umkehren  und 1 dazuzählen
01101

10010
       1
10011

-01101 r=2 => 10011 r=2k

Mann kann eine negative zahl mit unendlich 1er ausfüllen und bis auf den letzten 1er kürzen
Mann kann eine positive zahl mit unendlich 0er ausfüllen und bis auf den letzten 0er kürzen

Gerechnet wird immer mit der gewünschten Anzahl von bits
wenn der vorletzte übertrag gleich dem letzten übertrag ist kann der letzte übertrag gestrichen werden



n=3

|r=10|VB|exzess 4|exzess 3|Zweierkomplement|Zweierkomplement simplifiziert|
|--:|--:|--:|--:|--:|--:|
|-4||000||100|100
|-3|111|001|000|101|101
|-2|110|010|001|110|110
|-1|101|011|010|111|111
|0|100/000|100|011|000|0
|1|001|101|100|001|01
|2|010|110|101|010|010
|3|011|111|110|011|011
|4|||111||
# 6.10.2023
## Zeichen und Zahlendarstellung mit Codes
See Unicode
# 20.10.2023
