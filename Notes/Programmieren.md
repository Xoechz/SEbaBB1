# Einleitung

## Ziel
Algorithmen verstehen
Algorithmus vs Programm
systematisch denken und Problemlösungen erarbeiten
Enwurf von Algorithmen und Datenstrukturen
wichtige Standartalgorithmen

Nicht Programmieren => RICHTIG SYSTEMATISCH DENKEN

Kandidat zum Anrechnen

Basis der Programmierung, nur Theoretisch 

Wäre intressant anzuschauen

Läuft verknüpft mit Einführung in die Programmierung

Schriftliche Klausur am Ende des Semesters

Alle Materialien sind auf Moodle

Die 10 Punkte "Gliederung der Vorlesung"
Zu jedem punkt muss man etwas sagen können wann man es gelernt hat und darüber reden
Nächste Woche erste Übung, danach entscheiden.

# 13.9.2023

Algorithmus = Problemlösungsvorschrift

Eindeutige Anleitung bestimmter Aktionen => nacheinander oder nebeneinander/eindeutige Reihenfolge

Beispiel mit Wörterbuch 800 seiten

Seite nach Seite => worst case 800 versuche
immer hälfte spalten => worst case ln(800) <10 => 10

Genau beschrieben wie input aussiegt (z.B. Positive ganze Zahlen)

Euklids größter gemeinsamer Teiler
```
Euklid(p,q)
{
    r=p%q;
    if(r=0)
        return q;
    else
        return ggt(q,r); 
}
```

Kann man sicher sein das der Algorithmus immer funktioniert?
Kann man sicher sein ob ein Algorithmus endet?

Algorithmen bestehen aus Aktionen und Datenobjekten
Datenobjekte haben bestimte Wertebereiche
Aktionen können sich aus Elementaraktionen zusammensetzen
Der ausführende ist der Prozessor(ob Mensch oder Maschine)

Aktionen können nur auf passende Datenobjekte ausgeführt werden.

Ein Algorithmus
- ermittelt gesuchte aus gegebenen Datenobjekten
- wird schrittweise ausgefüllt
- ist für den Prozessor eindeutig interpretierbar und ausführbar
- ist eindeutig
- ist vollständig
- ist in einer Notation oder Sprache
- hat eine exakte Definition
- hat eine endliche Beschreibung
- nicht unbedingt endlich

Eigenschaften
Verpflichtend für Algorithmus
- Korrektheit
- Vollständigkeit
- Eindeutig
- Ausführbar
- Statische Endlichkeit = Beschreibung endlich

Verschiedene Werte
- Dynamische Endlichkeit
- Effizienz
# 14.9.2023
## Aufbau von Algorithmen
Datenobjekte
Anweisungen um Datenobjekte zu manipulieren
Algorithmen kommunizieren über schnittstellen mit der Umwelt
- Kommunikationsschnittstelle => zwischen Algorithmen
- Device Schnittstellen => mit Geräten(IN und OUT: z.B. Messgerät, Tastatur, Bildschirm)

Der "Reduce" Algorithmus verwendet den "Euclid" Algorithmus über eine Schnittstelle
```
Euklid(↓p,↓q,↑gcd)
beginn
	r:=p mod q;
	while(r!=0)do
	    p:=q
	    q:=r
	    r:=p mod q
    end while
    gcd:=q
end
```

### Datenobjekte
Es gibt verschiedene Teile einer Notation

Ein Algorithmus hat einen Namen, Eingangsparameter und Ausgangsparameter
↓Eingangsparameter
↑Ausgangsparameter
⇵Übergangsparameter

So kann ein anderer Algorithmus unseren Algorithmus aufrufen

```
Reduce(⇵n,⇵d)
beginn
	Euklid(↓n,↓d,↑gcd)
	n:=n div gcd
	d:=d div gcd
end
```

Datenobjekte können verschiedene Wertebereicht z.B. Ganze Zahle, Reele Zahlern, Zeichen, Wahrheitswerte

### Aktionen
#### Wertzuweisung
Auf der linken Seite steht immer der Name eines Datenobjekts.
Auf der rechten Seite kann ein Ausdruck stehen, das Ergebniss des Ausdrucks wird dann ins Datenobjekt geschrieben.
```
i:=42   -- Einfache Zuweisung
i:=i+1  -- Ausdruck auf der rechten Seite
i:=(i*j)+r*h/1464
```
#### Bedingungen
Nimmt einen True or False Wert, Wenn true werden die Anweisungen im if ausgeführt.
```
Min(↓a,↓b,↑min)
beginn
	min:=b
	if a<b then
		min:=a
	end if
end
```
# 15.9.2023
Eine If Anweisung kann auch eine else Anweisung besitzen
Wenn das If nicht wahr ist werden die Aktionen im else Block ausgeführt.

a,b,c
3faches  equals

```
WriteEquals(↓a,↓b,↓c)
beginn
	if(a=b)then
		if(a=c)then
			Write("equal")
		else
			Write("not equal")
		end if
	else
		Write("not equal")
	end if
end
```
## Aktionen
### Schleifen
Wenn die Bedingung einer While Schleife erfüllt ist wird sie wieder ausgeführt

Summe von Zahlen 1 bis n
```
ZahlenSumme(↓n,↑sum)
beginn
	sum := 0
	i = 1
	while(i<=n)do
		sum:=sum+i
		i=i+1
	end while
end
```
Schleifen können eindlos laufen => **!Aufpassen!**

Mit diesen Anweisungen kann man **alle Algorithmen** beschreiben.

## Datentypen

Der Datentyp schreibt vor welchen Wertebereich ein Datenobjtkt hat, welche Aktionen damit ausgeführt werden können und was die Aktionen bewirken(Semantik).

unstrukturiert => elementar, einfacher Wert
strukturiert => beinhaltet mehrere Werte


ganze Zahl + ganze Zahl = ganze Zahl
reelle Zahl + reelle Zahl = reelle Zahl
ganze Zahl + reelle Zahl = reelle Zahl

die wichtigsten elementaren Datentypen sind
int, real, char, bool

Ein Datentyp muss deklariert werden
```
var
	temperature: real
	startNumber: int
	isPrime: bool
```
Das hilft Fehler zu verhindern, da man nicht den falschen Datentyp zuweisen kann.

```
const
	pi: real = 3.1415926
	maxSite: int = 100
```
Konstante können nicht überschrieben werden und müssen beim Deklarieren gesetzt werden.

Jedes Datenobjekt hat einen Namen, einen Datentyp und einen Wert. Nach dem deklarieren ist dieser wert undefiniert(null).

### unstrukturierte Datentypen
#### Integer(int)
ganze Zahlen(negativ und positiv)

Der Wertebereich hängt von den verwendeten Bits ab

Das erste bit wird als sign für positive und negative Zahlen, wenn es 1 ist ist die Zahl negativ, wenn es 0 is positiv
0 kann also positiv oder negativ sein
Der Wertebereich eines 16 bit int ist -2¹⁵+1 bis 2¹⁶-1=-32767 bis 32767.


Operatioren
+, -, *

div => division ohne rest => 5 div 3 = 1
mod => modulo, rest der division => 5 mod 3 = 2

=, !=, <, >, <=, >=
#### Boolean(bool)
umfasst Wahrheitswerte true und false
Operationen
and, or
not
=, !=, <, >, <=, >=
(false < true)
#### Character(char)
Repräsentiert ein Zeichen eines Zeichensatzes
Der Wert des Zeichens ist geordnet
'a'<'z'
'A'<'Z'
'0'<'9'

Also ist alles zwischen 'a' und 'z' ein Kleinbuchstabe
`'a'<= x and x <= 'z'`

Operationen
=, !=, <, >, <=, >=

Durch die Ordnung der Zeichen hat jedes Zeichen eine Ordinalzahl.
int('A') => 65
char(65) => 'A'
int(char(i)) = i

char(i + int('0')) die i-te Ziffer

#### Real
Gleitkommazahlen => Sehr kleine oder sehr große Zahlen

Es wird eine Mantisse und ein Exponent gespeichert

pi = 0.31415926 * 10¹, Mantisse = 0.3141592, Exponent = 1

Der Bereich und die Genauigkeit hängen von der Anzahl der Bits in Mantisse und Exponent ab
32 bit => +-3,4 * 10³⁸
Genauigkeit ber 32 Bit: ca. 7 Dezimalstellen
Operationen: +, -, * , /, =, !=, <, >, <=, >=
Durch Rundungsfehler kann man bei Vergleichen nicht garantieren das das Ergebnis richtig ist
# 23.9.2023
2 Fächer zusammengefasst zu einem
Programieren und Algorithmen
Viel am Zettel
Zettel superiority

Übungen sind großteils Doku

Viele Codingconventions

Jede Variable muss mindestens einmal ein Wert erhalten => vor ellem bevor ich sie lese

Entscheidungen um Code intressant zu machen

Prosa => 1 Satz
Stilisierte Prosa => Ablauf
## Schleifen
While
Until => do while
for

Hilfsvariable aus for nie auserhalb nutzen
## Filter
Strukturkomplexität
Anzahl der Wege die gegangen werden können

Essentielle Strukturkomplexität
Wieder zusammenlaufende Verzweigungen können Reduziert werden

goto
Strukturkomplextät
3
Essentielle Strukturkomplexität
2
Durchlaufschleife
S 4
E 1
Abweisschleife
S 3
E 1

Guter Code
Essentielle Strukturkomplexität = 1
Strukturkomplexität < 8
# 30.9.2023
Eine Sprache ist die Menge alle gültigen Sätze.
Wörter => Symbole
Gramatik => Syntax
Inhalt => Semantik

Programm => Satz

## Übung 1
### 1
```
value := 0;
overtime := 0;
usedOvertime := 0;
Read(value);
While(value > 0) 
{
	if(value > 40)
	{
		overtime := overtime + value - 40;
	}
	else
	{
		usedOvertime := usedOvertime + 40 - value;
	}
	Read(value);
}
WriteLn("Ueberstunden: " + overtime);
WriteLn("Minusstunden: " + usedOvertime);
```
# 8.10.2023
## Strukturierte Datentypen
strukturierte Datentypen sind complexere zusammengesetzte Datentypen
### Array
Ein array ist eine Sammung von Datenobjekten

Ein array hat eine größe und eine Datentypen für seine Elemente
```
var
	a: array [1:10] of int
```
Lieber 
```
var
	a: array [0:9] of int
```
Wir geben einen Start und einen Endindex an, die Feldlänge ergibt sich daraus(10 für beide).

Wir greifen mit einem int auf das Element an dem Index zu.

Der Index muss existieren.
`a[i]:=7`
### String
Zeichenketten

Können mit einer maximalen Länge angelegt werden. Wenn nicht wird 255 angenommen.

Jeder String hat eine Länge
a:= "FH" => 2
b:="Hagenberg" => 9

Nicht jede Programiersprache nutzt strings(z.B. C)

Strings können aneinandergehängt werden

x:= a + " " + b => FH Hagenberg

Lenght(x) => 12

#### Warum nutzen wir string statt ein Array mit chars
1. string
name:="Elias"
2. array\[1,5]
name\[1]:='E'
name\[2]:='l'
name\[3]:='i'
name\[4]:='a'
name\[5]:='s'

Weil string eigene Operationen hatt
### Compound
Gesammeltes Datenobjekt
```
type
	Address = compound
		zip:int
		city, street: string
		nr: int
	end
var
	myAddress: Address
```
Compounds können auch compounds enthalten
```
type
	Address = compound
		zip:int
		city, street: string
		nr: int
	end
	Person = compound
		name: string
		address: Address
var
	sudent, tutor: Person
```


#### Type Deklaration
Man kann strukturierte Datentypen auch selbst erstellen
```
type
	vector = array[1,10] of int
var
	a:vector
```
Dadurch erleichtert man sich die Verwendung bei oft verwendeten strukturierten Datentypen

Compounds kann man auch einen Wert zuweisen oder auf Gleichheit prüfen
```
tutor:=student
if student = tutor then
...
```
Zugriff auf einzelne Werte
```
student.address.zip = 4232;
student.address.city = "Hagenberg"
```

Übung
x im Array a finden
i ist die Ausgabe
i = 0 wenn nichts gefunden wurde

Jedes Element des Feldes muss durchsucht werden
```
Find(a[1,n], x, out i)
	i:=1
	while(i<=n and a[i]!=x) do
		i := i + 1
	end
	if(i>n)then
		i:=0
	end
end
```

## Pseudocode
Nicht so strikt wie eine Programiersprache
Schneller
Einfacher zu machen als Ablaufdiagram

## Ablaufdiagram
Übersichtilicher
Einfacher zu verstehen

Vorlesung => Pseudocode
Übung => Pascal
## Struktur
Welche Bausteine werden verwendet/werden gebraucht?

Welche Bausteine wirken sich positiv/negativ auf die Qualität aus?

Wie kann man die Strukturqualität messen?

Mann kann mit 2 Aktionen jeden Algorithmus darstellen
1. Elementare Aktion mit einem Eingang und einem Ausgang
2. Binäre Verzweigung mit einem Eingang und zwei Ausgängen
```
label1: A1
if
```
Böses GOTO sollte vermieden werden

Probleme
sehr komplex
Komplexität steigt Quadratisch mit Änderungen

D-Diagramme

Schleifen wie in den Übungen


## Case Anweisung
Ausdruck muss kein boolean sein

Mehrere Pfande sind möglich
```
case dayOfWeek of
	1: day:= "Monday"
	1: day:= "Dienstag"
	1: day:= "Mittwoch"
	1: day:= "Donnerstag"
	1: day:= "Freitag"
	6..7: day:= "Wochenende"
	otherwise: FEHLER
```
in c braucht man ein break zwischen den fällen
c führt ab der ersten richtigen Anweisungen sonst alle danach aus

## Return
Ermöglicht das beenden eines Algorithmus an einer bestimmten Stelle
```
Find(a[1,n], x, out i)
	i:=n
	while(i>0) do
		if(a[i]=x)
			return
		end
		i := i + 1
	end
end
```

Return in Funktionsalgorithmen

Ein Funktionsalgorithmus kann einen Datentypen haben.
Ein Wert dieses Datentypen MUSS returned werden.
# 13.10.2023
## Strukturkomplexität
Struktutkomplexität = Anzahl der Pfade
1 Pfad muss mindestens existieren

## Essentielle Strukturkompexität
Alle D Diagramm Elemente von innen nach außen reduzieren

## Algorithmen und Programme
Ein Programm ist ein, in einer Programmiersprache, dargestellter Algorithmus.

### Fehler
Ein Fehler ist eine Abweichung einer Anforderung, one Anforderungen gibt es keine Fehler

### Anforderungen
Fuktionale oder nicht Funktionale Anforderungen
#### Funktionale Anforderungen
Was zu tun ist
#### Nicht funktionale Anforderungen
Geschwindigkeit, Zuverlässigkeit, Vorgaben für Entwicklungsprozess, Dokumentation, Tests
#### Fehlerbehandlung
Design by contract => einfach ausführen, der Client ist selbst schuld wenn etwas schiefgeht
Defensive Programming => Fehler verhindern
#### Spezifizierungen
Entweder nach Lösungsvorgang oder nach Lösung definiert.
Kann unpräzise sein, je präziser desto besser.
Präzisere Spezifikationen können dafür unleserlicher sein.
# 14.10.2023
Skalar => Einwertig
	Ordinal => Abzählbar(Nach einer Reihenfolge sortierbar)
		Enumerationen => Einen eigen definierte Menge die ordinal ist
		Unterbereiche => Ein Unterbereich eines anderen Ordinalen Datentypen
	Nicht Ordinal => Nicht abzählbar
Strukturiert => Mehrwertig
# 10.11.2023
## Algorithmen mit Gedächtnis
Gleiche Eingabe => andere Ausgabe
Bricht alles was wir über klassische Algorithmen wissen

Es gibt einen Zustand als unsichtbare eingangsvariable
Bei jeder ausführung wird das ergebnis und der Folgezustand weitergegeben
es gibt einen Anfangszustand und der vorherige zustand wird dem algorithmus "übergeben"

Wie geben wir den ersten wert an
# statische Datenobjekte
Lokale Variable "lebt" nur solange der algorithmus läuft, bei einem weiteren aufruf wird eine neue Variable angelegt

Statische variablen werden beim initialisieren gesetzt und "leben" solange man den algorithmus aufrufen kann. Jeder aufrug greift auf die selbe variable zu

"the default setting in [Free Pascal](https://wiki.freepascal.org/FPC "FPC") is to allow const identifiers to be re-assigned to."

Pascal hat keine statischen variablen, man muss globale variablen verwenden

## Module
Module haben ein Interface, eine Implementierung und eine Initialisierung

Warum module?
Weil man nur die Implementierung und nicht das Hauptprogramm ändern muss.
Jedes nicht triviale system, MUSS mit der Zeit geändert werden.

## Systematische Algorithmusentwicklung
### Schrittweise Verfeinerung
Problem in Teilbereiche Unterteilen und die Teilbereiche möglichst unabhängig behandeln

Teilbereiche sind durch Schnittstellen verbunden

# 17.11.2023
## LINKED LIST UND BINARY TREE(zuerst aber Pointer)

# 19.1.2024
## O Notation