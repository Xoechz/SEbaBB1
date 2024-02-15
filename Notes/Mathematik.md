# Logische und formale Grundlagen der Informatik

# Einleitung

Modus der Lehrveranstaltung
Alles auf Moodle
Videos

Vorlesung und Übung sind kombiniert

Neuer Stoff ist nur in Moodle

Vorlesungen für Fragen

Dafür kürzere Vorlesungen

Fragen aufschreiben / Google fragen

Moodle Forum
Antworten von Kollegen werden überprüft, also passen sie wenn sie im Forum sind

Terminplan in Moodle mit Liste was alles getan werden muss

Selbstkontrollefragen sind sehr unterschiedlich

2 Klausuren die zusammengezählt werden
Klausuren können wiederholt werden

Für mich irrelevant B-)

Note => Pur Klausur
# 13.9.2023

## Methode und Sprache der Mathematik

Methode 
Absicherung neuer Erkenntnisse durch Beweisen

Sprache
Logik und Mengenlehre => eigener Syntax, wie Deutsch, Englisch, C#....
Nicht nur Mathematik, sondern schöne eindeutige Mathematik

Alle Subkathegorien der Mathematik bauen auf den Sprachen der Logik und Mengenlehre auf

## Methode

Reales Problem wird zum Mathematischen Modell
Man erarbeitet eine Modelllösung
Diese Lösung wird angewand

Vorteile
Arbeiten im Modell beeinflusst die Realität nicht und ist billiger/einfacher

Nachteile
Bringt gefahren => zu viel vereinfachung

Beispiel Textbeispiel
Text beschreibt Problem
Text muss in Modell umgeformt werden
Lösung wird errechnet
Lösung muss wieder mit realem Kontext dargestellt werden

Beispiel Reiseroute
Reales Problem
Ich muss von A nach B

Modell
Eine Landkarte mit A und B darauf

Arbeiten im Model
Route mit Zwischenpunkten z1,...zn erstelllen

Realisiertung
von A nach z1, dann z2... fahren bis man Punkt B erreicht hat

Es ist für das Modell egal wie genau der Straßenverlauf sich verhält, man muss nur wissen wo man abbiegt. Außer man braucht genauere Informationen zur Strecke(Dauer, km, Verbrauch), dann muss das Modell genauer sein.


Elektronische Schaltungen

AND
y=x1∧x2
x1  x2  y 
0   0   0
0   1   0
1   0   0
1   1   1

y => x1*x2 >0

OR
y=x1∨x2
x1  x2  y
0   0   0
0   1   1
1   0   1
1   1   1

y => x1+x2 >0

NOT
y=¬x
x  y
0   1 
1   0 

Halbaddierer
s=(x1∨x2)∧¬(x1∧x2)
ü=x1∧x2
x1  x2  s  ü
0   0   0   0
0   1   1   0
1   0   1   0
1   1   0   1

Prof Lösung (¬x1∧x2)∨(x1∧¬x2)
Beides richtig, beides ist ein XOR für s

Verwirrung über Übung da sie einen Schritt wieder zurück war => es ging nicht um die Lösung sondern um die Methode
Verhältniss deutsche Sprache und oder zu logischen

In Zukunft auf dem Zettel, vielleicht anderes Notizprogramm für Bilder

# 14.9.2023
## Sprache
Syntax => äußere Form, Grammatik
Semantik => Bedeutung, Sinn
Sprache der Mathematik => Prädikatenlogik
es gibt verschiedene Notationen
gute Notationen vermitteln intuitiv die Bedeutung

Aufgabe der Sprache

Grundbereich definierten
Eigenschaften und Beziehungen
Zuordnungen von einem zum anderen

Multiplikation
Standartform => mult(x,y)
Notation => xy, x * y

Das offene Intervall
S => oIntervall(a,b)
N => \]a,b\[, (a,b)

Rest einer Division
S => rest(a,b)
N => mod(a,b), a mod b, a%b

f konvergiert gegen a
S => konvergiert(f,a)
N => lim f = a, f -> a

### Terme und Aussagen
Terme beschreiben Gegenstände
Aussagen beschreiben Sachverhalte => wahr oder falsch

Term
5 + 7

Aussage
5+7 > 10 => richtige Aussage
5+7 < 8 => falsche aussage

Objektkonstante => 0, 1, pi, e...
Variable => x, y, z...
Funktionskonstante => +, -, /, sin
Prädikatenkonstante => =, <, |, konvergiert...
Junktoren => nicht, und, oder, impliziert...
Quantoren => umgedrehtes A?

FK und PK haben eine Stelligkeit

### Semantik
Beschreibt die Bedeutung

Bestandteile
	Grundbereich
	Interpretation
	Belegung

Beispiel rest(a, 5)
Grundbereich Natürliche Zahlen
Interpretation Rest |-> Rest bei Division, 5 |-> die Zahl fünf
Belegung a|->die Zahl 8

der Rest bei Division acht durch fünf
### Beweisen
Man nutzt wahre Aussagen um andere Aussagen auf seine Wahrheit zu überprüfen
Endliche Folge von Schritten

Jeder Schritt ist abstrakt, korrekt und kontrollierbar
A beweisen
	direkt aus dem Grundwissen herleiten
	indirekt beweisen => nicht A auf Widerspruch führen

A widerlegen
	nicht A aus dem Grundwissen herleiten
	A auf Widerspruch führen

Vorwärts => vom Grundwissen aus
Rückwärts => von A aus
wenn möglich Rückwärtsschritte

### Terme und Atomare Aussagen Syntax
Konstante sind Terme
Variablen sind Terme
FK sind Terme wenn sie Terme als Parameter haben und die Anzahl passt
Atomate Aussagen sind PK wenn sie Terme als Parameter haben und die Anzahl passt
Quantoren

Wir erlauben Variable stelligkeit

### Terme und Atomare Aussagen Semantik

Terme und Aussagen werden schrittweise aufgelöst, von innen nach außen
Konstante haben ihne interpretation und variablen ihre Bedeutung

# 23.9.2023
![[Math1.jpg]]![[MathReal1.jpg]]
![[Math2.jpg]]
![[MathReal2.jpg]]
![[Math3.jpg]]
![[Math4.jpg]]
Die Junktoren hier sind falsch, es müssen Zeichen sein
![[Math5.jpg]]
![[Math6.jpg]]
![[Math7.jpg]]

# 3.11.2023
Neuer Prof
Ein Euphemismus


Mengenlehre nach Folien recht logisch, deshalb keine Mitschrift

Zahlenbereiche laut Folie intressant

Mächtigkeit => Anzahl der unterschiedlichen Elemente

Teilmengen
⊃∪∩⊂
{1,2}⊆{1,2,3}
# 17.11.2023
totale und partielle funktionen

f: M -> N 
f ist total wenn jeder wert in M einen wert in N hat
## Definitionsbereich
Def/f) ist die Menge aller x für die es ein y gibt
## Anwendung 
Anw/f, x) gibt den y wert der funktion f mit dem input x

f N -> N
  x |-> x²

Funktionen sind Mengen, Folgen sind Mengen. ALLES IST EINE MENGE

## Eigenschaften
### Injektiv
Jeder Ausgabewert hat nur einen Eingabewert

Wenn 2 verschiedene Eingabewertde den selben Ausgabewert haben ist eine Funktion nicht injektiv.

### Surjektiv
für jedes y gibt es ein x

### Bijektiv
beides
Damit beides zutrifft müssen beide Mengen gleich viele Elemente haben.

Jeder y Wert muss genau einen x Wert haben

### Permutation
Beide Mengen sind gleich und die Funktion ist bijektiv.

## Unendlichkeiten
N Z und Q sind abzählbar
R nicht
# 24.11.2023
## Relationen
Eine Relation ist wie eine Funktion, sie muss aber keine spezifische Ausgangsmenge haben.
Folien
Recht straight forward

# 12.1.2023
![[Induktion1.png]]
1. Wahr für 1
1. x⁻ sei beliebig aber fix und Aussage A ist wahr
1. 3|((x⁻+1)³+2*(x⁻+1))
1. Umformen zu 3|(x⁻³+2x⁻+3x⁻²+3x⁻+3)
1. Die ersten 2 sind wahr angenommen die anderen 3 sind durch 3 teilbar

# Sammlung der Notizen
![[20240128_191554.jpg]]

![[20240128_191558.jpg]]

![[20240128_191608.jpg]]

![[20240128_191615.jpg]]

![[20240128_191622.jpg]]

![[20240128_191630.jpg]]

![[20240128_191634.jpg]]

![[20240128_191643.jpg]]

![[20240128_191648.jpg]]

![[20240128_191655.jpg]]

![[20240128_191700.jpg]]

![[20240128_191711.jpg]]

![[20240128_191729.jpg]]

![[20240128_191737.jpg]]

![[20240128_191743.jpg]]

![[20240128_191748.jpg]]

![[20240128_191754.jpg]]

![[20240128_191758.jpg]]

![[20240128_191805.jpg]]

![[20240128_191810.jpg]]

![[20240128_191903.jpg]]

![[20240128_191907.jpg]]

![[20240128_191912.jpg]]

![[20240128_191917.jpg]]

![[20240128_191924.jpg]]

![[20240128_191929.jpg]]

![[20240128_191936.jpg]]

![[20240128_191939.jpg]]

![[20240128_191944.jpg]]

![[20240128_191948.jpg]]

![[20240128_191953.jpg]]

![[20240128_191958.jpg]]