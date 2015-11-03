.. _manual.translation:

=============
Übersetzungen
=============

Die Arbeit mit Sphinx und transifex
===================================

* Lokalisierungsdateien (\*.pot) erzeugen

  .. code-block:: none

    make gettext

* \*.po Dateien auf den aktuelle Stand bringen

  .. code-block:: none

    sphinx-intl update -p _build/locale

* \*.pot Dateien zu transiflex übertragen.

  .. code-block:: none

     tx -d --traceback push -s

* Die übersetzten Inhalte von transifex zurück in das lokale projekt holen

  .. code-block:: none

     tx -d --traceback pull -l en
     tx -d --traceback pull -l fr
     tx -d --traceback pull -l it
     tx -d --traceback pull -l sl

* Die \*.po dateien in maschinenlesbare \*.mo Dateien verwandeln

  .. code-block:: none

     sphinx-intl build
