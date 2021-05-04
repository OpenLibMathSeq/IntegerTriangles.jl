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
    <td style = "text-align: left;">EulerianSO2</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A340556'>A340556</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 2, 0, 1, 8, 6</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A163936'>A163936</a></td>
    <td style = "text-align: left;">1, 1, 0, 2, 1, 0, 6, 8, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 1 0 1 0 1 2 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 1, 0, 1, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 1 1 0 3 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 3, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001147'>A001147</a></td>
    <td style = "text-align: left;">1, 1, 3, 15, 105, 945, 10395, 135135, 2027025, 34459425</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 2 8 46 496 5234 66344 1021918 17237488 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 2, 8, 46, 496, 5234, 66344, 1021918, 17237488</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 1 7 59 449 5161 68791 1005107 17221937 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 1, 7, 59, 449, 5161, 68791, 1005107, 17221937</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001662'>A001662</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -13, 47, 73, -2447, 16811, 15551</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 3 9 29 111 467 2137 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 3, 9, 29, 111, 467, 2137</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 22 52 1452 5610 195800 1062500 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 22, 52, 1452, 5610, 195800, 1062500</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 22 1452 195800 44765000 15548960784 7634832149392 5036317938475648 4297211671488276816 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 22, 1452, 195800, 44765000, 15548960784, 7634832149392, 5036317938475648, 4297211671488276816</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000311'>A000311</a></td>
    <td style = "text-align: left;">1, 1, 4, 26, 236, 2752, 39208, 660032, 12818912, 282137824</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A341106'>A341106</a></td>
    <td style = "text-align: left;">1, 1, 0, -6, -12, 144, 1080, -5184, -127008, -95904</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A112487'>A112487</a></td>
    <td style = "text-align: left;">1, 2, 10, 82, 938, 13778, 247210, 5240338, 128149802, 3551246162</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 21 237 3711 74451 1822557 52680189 1755990327 66313036227 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 21, 237, 3711, 74451, 1822557, 52680189, 1755990327, 66313036227</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 4 33 392 6145 119724 2789465 75660080 2341894185 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 33, 392, 6145, 119724, 2789465, 75660080, 2341894185</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 -15 -80 665 17136 55209 -4162752 -83069415 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, -15, -80, 665, 17136, 55209, -4162752, -83069415</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 9 87 995 13265 202545 3489255 66981915 1418241825 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 9, 87, 995, 13265, 202545, 3489255, 66981915, 1418241825</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A051577'>A051577</a></td>
    <td style = "text-align: left;">0, 1, 5, 35, 315, 3465, 45045, 675675, 11486475, 218243025</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 8 50 420 4410 55440 810810 13513500 252702450 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 8, 50, 420, 4410, 55440, 810810, 13513500, 252702450</td>
  </tr>
</table>
```
