.. _guidelines-filesystem:

===========
Dateisystem
===========

* Jedes Thema im AleX Projekt (siehe :ref:`Themen <content>`) wird als ein Ordner in UpperCamelCase_ Notation dargestellt.
* | In diesem Ordner gibt es eine \*.rst Datei, die mit dem Namen des Ordners gekennzeichnet ist.
  | Es werden aber nun **alle** Buchstaben **klein** geschrieben.
* Als Bezeichnung für das Thema wird ein Substantiv_ (Hauptwort) im Singular_ (Einzahl) gewählt.
* Normalerweise stammt die Bezeichnung (der Name des Ordners und der \*.rst Datei) aus der englischen Sprache.
* In der \*.rst Datei wird dann das Thema und seine Zusammenhänge mit anderen Themen ausführlich beschrieben.
* Über den Aufbau der \*.rst Dateien finden sich weitere Angaben in den :ref:`Kodierrichtlinien für reStructuredText <guidelines-coding-restructuredtext>`.

Beispiel:

.. code-block:: None

    |
    +- Content
       +- Book
       |  +- book.rst
       |  +- ...
       +- Concept
       |  +- concept.rst
       |  +- ...
       +- content.rst
       +- glossary.rst
       +- bibliography.rst
       +- Country
          +- austria.rst
          +- country.rst
          +- france.rst
          +- germany.rst
          +- italy.rst
          +- liechtenstein.rst
          +- monaco.rst
          +- slovenia.rst
          +- switzerland.rst

.. _UpperCamelCase: https://de.wikipedia.org/wiki/Binnenmajuskel#Programmiersprachen
.. _Substantiv: https://de.wikipedia.org/wiki/Substantiv
.. _Singular: https://de.wikipedia.org/wiki/Singular

