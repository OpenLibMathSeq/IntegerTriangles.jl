```@raw html
<style> table, td, th {border-collapse: collapse; font-family: sans-serif; color: blue;}
td, th {border-bottom: 0; padding: 4px}
tr:nth-child(odd) {background: #eee;}
tr:nth-child(even) {background: #fff;}
tr.header {background: orange !important; color: white; font-weight: bold;}
tr.subheader {background: lightgray !important; color: black;}
tr.headerLastRow {border-bottom: 2px solid black;}
th.rowNumber, td.rowNumber {text-align: right;} </style><body>
<table>
  <tr class = "header headerLastRow">
    <th style = "text-align: left;">Trait</th>
    <th style = "text-align: left;">ANumber</th>
    <th style = "text-align: left;">Sequence</th>
  </tr>
  <tr>
    <td style = "text-align: left;">SchroederL</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A172094'>A172094</a></td>
    <td style = "text-align: left;">1, 1, 1, 3, 4, 1, 11, 17, 7, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,4,3,1,7,17,11,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 4, 3, 1, 7, 17, 11</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331969'>A331969</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -4, 1, -1, 11, -7, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,4,1,1,7,11,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -4, 1, 1, -7, 11, -1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,3,1,11,4,45,17,1,197,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 3, 1, 11, 4, 45, 17, 1, 197</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,3,2,1,11,8,3,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 3, 2, 1, 11, 8, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109980'>A109980</a></td>
    <td style = "text-align: left;">1, 2, 8, 36, 172, 852, 4324, 22332, 116876, 618084</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A225887'>A225887</a></td>
    <td style = "text-align: left;">1, 1, 4, 18, 86, 426, 2162, 11166, 58438, 309042</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A225887'>A225887</a></td>
    <td style = "text-align: left;">0, 1, 4, 18, 86, 426, 2162, 11166, 58438, 309042</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,4,15,63,280,1297,6193,30268,150687,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 15, 63, 280, 1297, 6193, 30268, 150687</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,4,17,40,216,458,2745,5558,35318,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 17, 40, 216, 458, 2745, 5558, 35318</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,40,458,5558,69660,891154,11563214,151605142,2003523032,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 40, 458, 5558, 69660, 891154, 11563214, 151605142, 2003523032</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001003'>A001003</a></td>
    <td style = "text-align: left;">1, 1, 3, 11, 45, 197, 903, 4279, 20793, 103049</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331328'>A331328</a></td>
    <td style = "text-align: left;">1, 3, 21, 171, 1509, 13995, 134277, 1320651, 13237221, 134682219</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330802'>A330802</a></td>
    <td style = "text-align: left;">1, -1, 5, -33, 253, -2121, 18853, -174609, 1667021, -16290969</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,15,81,453,2583,14907,86733,507561,2982987,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 15, 81, 453, 2583, 14907, 86733, 507561, 2982987</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,24,152,984,6440,42408,280312,1857336,12326792,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 24, 152, 984, 6440, 42408, 280312, 1857336, 12326792</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,12,84,630,4908,39158,317544,2605590,21571500,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 12, 84, 630, 4908, 39158, 317544, 2605590, 21571500</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,4,20,58,64,390,2948,10934,20320,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, -4, 20, -58, 64, 390, -2948, 10934, -20320</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,8,54,342,2098,12634,75190,443934,2606330,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 8, 54, 342, 2098, 12634, 75190, 443934, 2606330</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,34,190,1058,5890,32822,183158,1023658,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 34, 190, 1058, 5890, 32822, 183158, 1023658</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,14,70,362,1910,10214,55154,300034,1641742,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 14, 70, 362, 1910, 10214, 55154, 300034, 1641742</td>
  </tr>
</table>
```
