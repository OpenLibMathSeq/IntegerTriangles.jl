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
    <td style = "text-align: left;">Rencontres</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008290'>A008290</a></td>
    <td style = "text-align: left;">[1 0 1 1 0 1 2 3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A098825'>A098825</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 1 1 0 3 2 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A055137'>A055137</a></td>
    <td style = "text-align: left;">[1 0 1 -1 0 1 -2 -3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 0 -1 1 0 -3 -2 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 -1 1 0 -3 -2 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 2 0 9 3 1 44 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 1 2 0 9 3 1 44 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 1 1 1 2 2 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 1 1 1 2 2 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A062282'>A062282</a></td>
    <td style = "text-align: left;">[1 0 2 2 16 64 416 2848 22912 205952 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A063083'>A063083</a></td>
    <td style = "text-align: left;">[0 1 0 4 8 56 304 2192 17408 156928 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000023'>A000023</a></td>
    <td style = "text-align: left;">[1 -1 2 -2 8 8 112 656 5504 49024 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 2 2 13 52 317 2138 16834 149292 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 2 2 13 52 317 2138 16834 149292 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 3 6 20 40 315 630 5544 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 3 6 20 40 315 630 5544 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A281262'>A281262</a></td>
    <td style = "text-align: left;">[1 0 6 40 630 11088 244860 6362928 190900710 6490575520 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000166'>A000166</a></td>
    <td style = "text-align: left;">[1 0 1 2 9 44 265 1854 14833 133496 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000354'>A000354</a></td>
    <td style = "text-align: left;">[1 1 5 29 233 2329 27949 391285 6260561 112690097 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 5 -3 105 -807 10413 -143595 2304081 -41453775 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 5 -3 105 -807 10413 -143595 2304081 -41453775 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000522'>A000522</a></td>
    <td style = "text-align: left;">[1 2 5 16 65 326 1957 13700 109601 986410 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010842'>A010842</a></td>
    <td style = "text-align: left;">[1 3 10 38 168 872 5296 37200 297856 2681216 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 12 78 570 4900 48160 530390 6464430 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 2 12 78 570 4900 48160 530390 6464430 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 8 14 82 132 744 4566 -33442 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 2 8 14 82 132 744 4566 -33442 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 4 12 48 240 1440 10080 80640 725760 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 4 12 48 240 1440 10080 80640 725760 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[0 1 2 6 24 120 720 5040 40320 362880 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A098558'>A098558</a></td>
    <td style = "text-align: left;">[1 2 4 12 48 240 1440 10080 80640 725760 ]</td>
  </tr>
</table>
```
