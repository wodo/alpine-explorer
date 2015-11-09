.. _guidelines-boundingbox:

Alle Daten in in einer Schachtel
================================

Wir sprechen von der so genannten "bounding box".

Für dieses Projekt bewegen wir uns im Kartenabschnitt (43.0°, 4.5°, 48.5°, 16.5°).

Ein bestimmte Bereich auf einer Landkarte kann also durch ein Rechteck (s, w, n, e) beschreiben werden:

* **s** bezeichnet die südliche Grenze des Rechtecks als Dezimalzahl in der Einheit Grad.
  (Kleinster Breitengrad, ausgehend vom Äquator entlang eines Meridian, Richtung Nordpol in positiver Richtung gemessen)
* **w** bezeichnet die westliche Grenze des Rechtecks als Dezimalzahl in der Einheit Grad.
  (Kleinster Längengrad, ausgehend vom Nullmeridian in östlicher Richtung gemessen)
* **n** bezeichnet die nördliche Grenze des Rechtecks als Dezimalzahl in der Einheit Grad.
  (Größter Breitengrad, ausgehend vom Äquator entlang eines Meridian, Richtung Nordpol in positiver Richtung gemessen)
* **e** bezeichnet die östliche Grenze des Rechtecks als Dezimalzahl in der Einheit Grad.
  (Größter Längengrad, ausgehend vom Nullmeridian in östlicher Richtung gemessen)

Als Grundlage für jede Positionsangaben in diesem Projekt dient das Referenzsystem WGS84.
Damit folgen wir den mit uns verbundenen Projekten wie z.B. der "OSM Datenbank" oder der "OverPass API".

.. Projektionen

   WGS84 (EPSG:4326)
   web Mercator (EPSG:3857)



   Projections/Spatial reference systems

   Data available on this site is in one of these two projections/spatial reference systems.
   WGS84 (EPSG 4326)

   OpenStreetMap uses the WGS84 spatial reference system used by the Global Positioning System (GPS). It uses geographic coordinates between -180° and    180° longitude and -90° and 90° latitude. So this is the "native" OSM format.

   This is the right choice for you if you need geographical coordinates or want to transform the coordinates into some other spatial reference system or    projection.
   Mercator (EPSG 3857)

   Most tiled web maps (such as the standard OSM maps and Google Maps) use this Mercator projection.

   The map area of such maps is a square with x and y coordiates both between -20,037,508.34 and 20,037,508.34 meters. As a result data north of about 85.   1° and south of about -85.1° latitude can not be shown and has been cut off.

   The correct EPSG code for this data is 3857 and this is what the data files show. Before this code was allocated other codes such as 900913 were used.    If your software does not understand the 3857 code you might need to upgrade. See this page for all the details.

   This is the right choice for you if you are creating tiled web maps.
