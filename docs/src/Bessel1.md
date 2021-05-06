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
    <td style = "text-align: left;">Bessel1</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122850'>A122850</a></td>
    <td style = "text-align: left;">[1 0 1 0 -1 1 0 3 -3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A104548'>A104548</a></td>
    <td style = "text-align: left;">[1 1 0 1 -1 0 1 -3 3 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122848'>A122848</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 0 3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A144299'>A144299</a></td>
    <td style = "text-align: left;">[1 1 0 1 1 0 1 3 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 1 0 -1 0 3 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 1 0 -1 0 3 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 0 1 1 0 0 2 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 0 1 1 0 0 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000806'>A000806</a></td>
    <td style = "text-align: left;">[1 1 0 1 -5 36 -329 3655 -47844 721315 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 -3 16 -115 1051 -11676 152839 -2304261 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 -3 16 -115 1051 -11676 152839 -2304261 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A025164'>A025164</a></td>
    <td style = "text-align: left;">[0 1 -1 4 -21 151 -1380 15331 -200683 3025576 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A144301'>A144301</a></td>
    <td style = "text-align: left;">[1 -1 2 -7 37 -266 2431 -27007 353522 -5329837 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 1 -1 4 -18 121 -1056 11386 -145960 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 1 -1 4 -18 121 -1056 11386 -145960 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -1 3 15 -105 -420 4725 17325 -270270 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 -1 3 15 -105 -420 4725 17325 -270270 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 15 -420 17325 -945945 64324260 -5237832600 496939367925 -53835098191875 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 -1 15 -420 17325 -945945 64324260 -5237832600 496939367925 -53835098191875 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002119'>A002119</a></td>
    <td style = "text-align: left;">[1 1 -1 7 -71 1001 -18089 398959 -10391023 312129649 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A080893'>A080893</a></td>
    <td style = "text-align: left;">[1 1 3 19 193 2721 49171 1084483 28245729 848456353 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 2 2 -2 22 -206 2354 -31426 480806 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 2 2 -2 22 -206 2354 -31426 480806 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 6 9 9 18 -81 1053 -14418 225747 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 3 6 9 9 18 -81 1053 -14418 225747 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 -1 1 7 -124 1591 -19991 256691 -3335228 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 -1 1 7 -124 1591 -19991 256691 -3335228 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 3 19 175 2076 29911 505093 9757539 211883500 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 3 19 175 2076 29911 505093 9757539 211883500 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 3 0 7 -45 396 -4277 54825 -813348 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 3 0 7 -45 396 -4277 54825 -813348 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 1 0 1 -5 36 -329 3655 -47844 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 1 0 1 -5 36 -329 3655 -47844 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A231622'>A231622</a></td>
    <td style = "text-align: left;">[1 2 1 1 -4 31 -293 3326 -44189 673471 ]</td>
  </tr>
</table>
```
