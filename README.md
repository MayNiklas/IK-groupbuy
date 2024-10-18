# IK-groupbuy

https://github.com/ianmaclarty/ik

## Items

### Packliste

| Item                            | Anzahl benötigt | auf Reserve | Anzahl insgesamt | Kommentar |
| ------------------------------- | --------------- | ----------- | ---------------- | --------- |
| PCB-links                       | 1               | 0           | 1                |           |
| PCB-rechts                      | 1               | 0           | 1                |           |
| SJ-3524-SMT-TR Buchsen          | 2               | 0           | 2                |           |
| SOD123F Dioden                  | 52              | 8           | 60               |           |
| Waveshare 2040-zero             | 2               | 0           | 2                |           |
| M2 4mm screws                   | 10              | 5           | 15               |           |
| M2 3mm x 3.5mm heat set inserts | 10              | 5           | 15               |           |
| 6mm diameter bumpons            | 8               | 7           | 15               |           |
| male-to-male TRS cable          | 1               | 0           | 1                |           |

### Bring your own

| Item                   | Anzahl benötigt | Kommentar           |
| ---------------------- | --------------- | ------------------- |
| USB-C Kabel            | 1               |                     |
| Gateron KS-33 switches | 52              | bspw. bei nuphy.com |
| Keycaps                | 52              |                     |
| 3D-gedrucktes Case     | 1               |                     |

## Case

Es empfielt sich, bei der Oberseite des Cases die Abdeckungen im Slicer zu entfernen und das Case mit der Oberseite nach unten zu drucken. So wird die Oberfläche glatter und es ist kein Support notwendig.

Nachdem das Case gedruckt wurde, empfielt es sich zu testen, ob das PCB vernünftig passt.
Bei manchen Druckern kann es sein, dass die Tolleranzen zu groß sind und das PCB nicht passt.

## Firmware

Die Firmware die wir empfelen findet sich unter <https://github.com/ALinkbetweenNets/vial-qmk-ik.git>.\
Im Vergleich zur originalen Firmware von ianmaclarty/vial-qmk-ik, haben wir uns drum bemüht, eine möglichst standardisierte Firmware zu erstellen.

Features:

* VIAL Support ist enabled.
* n-key rollover ist enabled.

```sh
docker build -t qmk-firmware --build-arg source_repo=https://github.com/ALinkbetweenNets/vial-qmk-ik.git --build-arg keymap=handwired/ianmaclarty/ik1_2:vial .
docker run --rm qmk-firmware sh -c 'tar cf - *.uf2' | tar xvvf -
```

## Assembly

1. Firmware auf die Pi's flashen
2. zuerst das linke PCBs mit Dioden sowie dem Waveshare 2040-zero bestücken
3. Alle Tasten mit einer Pinzette testen
4. Nun das rechte PCB mit Dioden sowie dem Waveshare 2040-zero bestücken
5. Auf beiden PCB's die Buchsen verlöten
6. Nun die rechten und linken PCB's mit einem TRS Kabel verbinden
7. Die rechte PCB Hälfte testen
8. PCB in das Case einsetzen
9. Switche einsetzen
10. Switche löten
11. Erneut alle Tasten testen
12. Pins abschneiden
13. Heat set inserts auf der Cases Unterseite einsetzen
14. Zuschrauben
15. Bumpons auf die Unterseite kleben
