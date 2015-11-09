.. _manual-development:

===========
Entwicklung
===========

* Wir füllen aus verschiedenen Quellen unsere eigene Datenbank mit Inhalten zu bestimmten Themen.
* Aus diesen Beständen erzeugen wir zu den jeweiligen Themenkomplexen die notwendigen HTML-Dateien.

Grundlagen
==========

Damit wir eine klare Entscheidung darüber fällen können ob ein Element geographisch zu unserem Projekt gehört,
legen wir ein das gesamte Projektgebiet umfassendes Rechteck fest (Siehe: :ref:`guidelines-boundingbox`).

Um entscheiden zu können welchem der acht :ref:`Alpenländer <concept-alpinestates>` ein Element geographisch
zugeordnet werden kann, legen wir für jedes Land ein sogenanntes Polygon an.
Es umfasst die Grenzen des jeweiligen Landes welche durch unser Projektgebiet verlaufen.

Ob ein Element zu den Alpen als solches gehört, soll aus der Entscheidung abgeleitet werden, ob das fragliche Element
geographisch im Bereich der Alpenkonvention liegt.
Das Gebiet der Alpenkonvention ergibt sich aus der Vereinigungsmenge aller Gebiete sogenannter Alpengemeinden.
Eine Liste dieser Gemeinden leitet sich aus dem im österreichischen Staatsarchiv hinterlegten Urkunde ab.

Die Gemeinden befinden sich in folgenden territorialen Einheiten (NUTS 2 Regionen):

* Österreich (Bundesländer)

  * Vorarlberg
  * Tirol
  * Oberösterreich
  * Niederösterreich
  * Burgenland
  * Steiermark
  * Kärnten

* Schweiz (Grossregionen)

  * Région lémanique (Kantone: Genf, Waadt und Wallis)
  * Espace / Mittelland (Kantone: Bern, Solothurn, Freiburg, Neuenburg und Jura)
  * Zentralschweiz (Kantone: Uri, Schwyz, Obwalden, Nidwalden, Luzern, Zug)
  * Ostschweiz (Kantone: St. Gallen, Thurgau, Appenzell Innerrhoden, Appenzell Ausserrhoden, Glarus, Schaffhausen, Graubünden)
  * Ticino (Kanton: Tessin)

* Deutschland (Freistaat Bayern, Bezirke)

  * Schwaben
  * Oberbayern

* France (Regionen)

  * Rhône-Alpes
  * Provence-Alpes-Côte d'Azur

* Italia (Regionen)

  * Liguria
  * Piemonte
  * Valle d'Aosta
  * Lombardia
  * Autonome Provinz Bozen
  * Provicia Autonome di Trento
  * Veneto
  * Friuli Venezia Giulia

* Liechtenstein
* Monaco

* Slovenija (Regionen)

  * Zahodna Slovenija
  * Vzhodna Slovenija

Zur Einteilung der Alpen in Gebirgsgruppen gibt es verschiedene Systeme:

* Die Alpenvereinseinteilung der Ostalpen (Franz Graßler, 1982)
* Partizione delle Alpi (1926)
* Suddivisione Orografica Internazionale Unificata del Sistema Alpino (Sergio Marazzi)
* Die Einteilung der Schweizer Alpen nach SAC
* ...

Wir versuchen jedes dieser Systeme vollständig in unserer Datenbank abzubilden.

Dazu werden wir Sattelpunkte, Kamm- und Tallinien aus einem digitalen Geländemodell extrahieren müssen,
um so die Grenzen der Gebirgsgruppen gemäß ihrer Beschreibung in der einschlägigen Literatur kartieren zu können.

Erfassung der Grenzen
=====================

Die folgenden Länder haben im Projektgebiet keine Küstenlinie.
Deshalb ist die Erzeugung der Polynome für die Grenzlinien relativ einfach.

* Deutschland (:download:`germany.ql`)

  .. literalinclude:: germany.ql
     :language: none
     :linenos:

Daraus wurden die Dateien germany.geojson und germany.json erzeugt.

* Österreich (:download:`austria.ql`)

  .. literalinclude:: austria.ql
     :language: none
     :linenos:

Daraus wurden die Dateien austria.geojson und austria.json erzeugt.

* Liechtenstein (:download:`liechtenstein.ql`)

  .. literalinclude:: liechtenstein.ql
     :language: none
     :linenos:

Daraus wurden die Dateien liechtenstein.geojson und liechtenstein.json erzeugt.

* Schweiz (:download:`switzerland.ql`)

  .. literalinclude:: switzerland.ql
     :language: none
     :linenos:

Daraus wurden die Dateien switzerland.geojson und switzerland.json erzeugt.

Bei den Ländern an der Mittelmeerküste ergibt sich die Schwierigkeit, das die Abfragen nach dem obigen Muster
die politischen Grenzen inklusive der 12 Meilenzone erzeugen. Als Entscheidungsgrundlage welchem Land eine Element zuzuordnen ist,
mögen diese Polygone ausreichend sein. Zur Fertigung von Landkarten aber wird eine "richtige" Küstenlinie erwartet.

Diese lässt sich über folgende Abfrage (:download:`coastline.ql`) erzeugen:

.. literalinclude:: coastline.ql
   :language: none
   :linenos:

Mit diesen Daten lassen sich die Polygone der nun folgenden Länder entsprechend verknüpfen, so das
modifizierte Polygone entstehen die sich an die jeweilige Wasserlinie anschmiegen.

* Frankeich (:download:`france.ql`)

  .. literalinclude:: france.ql
     :language: none
     :linenos:

Daraus wurden die Dateien france.geojson und france.json erzeugt.

* Monaco (:download:`monaco.ql`)

  .. literalinclude:: monaco.ql
     :language: none
     :linenos:

Daraus wurden die Dateien monaco.geojson und monaco.json erzeugt.

* Italien (:download:`italy.ql`)

  .. literalinclude:: italy.ql
     :language: none
     :linenos:

Daraus wurden die Dateien italy.geojson und italy.json erzeugt.

* Slovenien (:download:`slovenia.ql`)

  .. literalinclude:: slovenia.ql
     :language: none
     :linenos:

Daraus wurden die Dateien slovenia.geojson und slovenia.json erzeugt.
