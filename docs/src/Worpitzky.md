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
    <td style = "text-align: left;">Worpitzky</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A028246'>A028246</a></td>
    <td style = "text-align: left;">[1 1 1 1 3 2 1 7 12 6 1 15 50 60 24 1 31 180 390 360 120 1 63 602 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A075263'>A075263</a></td>
    <td style = "text-align: left;">[1 1 1 2 3 1 6 12 7 1 24 60 50 15 1 120 360 390 180 31 1 720 2520 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A106340'>A106340</a></td>
    <td style = "text-align: left;">[1 -1 1 1 -3 1 -1 9 -7 1 1 -45 55 -15 1 -1 585 -835 285 -31 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 1 3 1 7 2 1 15 12 1 31 50 6 1 63 180 60 1 127 602 390 24 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 3 1 7 2 1 15 12 1 31 50 6 1 63 180 60 1 127 602 390 24 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 2 1 1 6 3 1 1 26 15 4 1 1 150 111 28 5 1 1 1082 1095 292 45 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 6 3 1 1 26 15 4 1 1 150 111 28 5 1 1 1082 1095 292 45 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000629'>A000629</a></td>
    <td style = "text-align: left;">[1 2 6 26 150 1082 9366 94586 1091670 14174522 204495126 3245265146 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[1 1 3 13 75 541 4683 47293 545835 7087261 102247563 1622632573 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[0 1 3 13 75 541 4683 47293 545835 7087261 102247563 1622632573 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A229046'>A229046</a></td>
    <td style = "text-align: left;">[1 1 2 4 10 28 88 304 1144 4648 20248 94024 463144 2409928 13198888 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 3 7 50 180 2100 10206 166824 1020600 21538440 158838240 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 3 7 50 180 2100 10206 166824 1020600 21538440 158838240 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A185157'>A185157</a></td>
    <td style = "text-align: left;">[1 3 50 2100 166824 21538440 4115105280 1091804313600 384202115256960 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 3628800 39916800 479001600 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A123227'>A123227</a></td>
    <td style = "text-align: left;">[1 3 12 66 480 4368 47712 608016 8855040 145083648 2641216512 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[1 -1 0 2 0 -16 0 272 0 -7936 0 353792 0 -22368256 0 1903757312 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A201339'>A201339</a></td>
    <td style = "text-align: left;">[1 3 15 111 1095 13503 199815 3449631 68062695 1510769343 37260156615 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A201354'>A201354</a></td>
    <td style = "text-align: left;">[1 4 28 292 4060 70564 1471708 35810212 995827420 31153998244 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyValn</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 15 292 10845 653406 58018051 7123041416 1155276253305 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 15 292 10845 653406 58018051 7123041416 1155276253305 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000169'>A000169</a></td>
    <td style = "text-align: left;">[1 2 9 64 625 7776 117649 2097152 43046721 1000000000 25937424601 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343584'>A343584</a></td>
    <td style = "text-align: left;">[1 0 -3 -10 25 574 2653 -30234 -644079 -2438722 102934381 2094370486 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 11 109 1139 13021 164051 2273629 34497299 569871901 10193697491 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 11 109 1139 13021 164051 2273629 34497299 569871901 10193697491 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343583'>A343583</a></td>
    <td style = "text-align: left;">[0 1 7 49 391 3601 37927 451249 5995591 88073041 1418137447 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000670'>A000670</a></td>
    <td style = "text-align: left;">[1 3 13 75 541 4683 47293 545835 7087261 102247563 1622632573 ]</td>
  </tr>
</table>
```
