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
    <td style = "text-align: left;">FallingFact</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008279'>A008279</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 2 1 3 6 6 1 4 12 24 24 1 5 20 60 120 120 1 6 30 120 360 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A094587'>A094587</a></td>
    <td style = "text-align: left;">[1 1 1 2 2 1 6 6 3 1 24 24 12 4 1 120 120 60 20 5 1 720 720 360 120 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A128229'>A128229</a></td>
    <td style = "text-align: left;">[1 -1 1 0 -2 1 0 0 -3 1 0 0 0 -4 1 0 0 0 0 -5 1 0 0 0 0 0 -6 1 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 1 2 1 3 2 1 4 6 1 5 12 6 1 6 20 24 1 7 30 60 24 1 8 42 120 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 2 1 3 2 1 4 6 1 5 12 6 1 6 20 24 1 7 30 60 24 1 8 42 120 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A320031'>A320031</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 5 3 1 1 16 13 4 1 1 65 79 25 5 1 1 326 633 226 41 6 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000522'>A000522</a></td>
    <td style = "text-align: left;">[1 2 5 16 65 326 1957 13700 109601 986410 9864101 108505112 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A087208'>A087208</a></td>
    <td style = "text-align: left;">[1 1 3 7 37 141 1111 5923 62217 426457 5599531 46910271 739138093 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002747'>A002747</a></td>
    <td style = "text-align: left;">[0 1 2 9 28 185 846 7777 47384 559953 4264570 61594841 562923252 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000166'>A000166</a></td>
    <td style = "text-align: left;">[1 0 1 -2 9 -44 265 -1854 14833 -133496 1334961 -14684570 176214841 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122852'>A122852</a></td>
    <td style = "text-align: left;">[1 1 2 3 6 11 24 51 122 291 756 1979 5526 15627 46496 140451 442194 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A205825'>A205825</a></td>
    <td style = "text-align: left;">[1 1 2 3 12 20 120 210 1680 3024 30240 55440 665280 1235520 17297280 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001813'>A001813</a></td>
    <td style = "text-align: left;">[1 2 12 120 1680 30240 665280 17297280 518918400 17643225600 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">[1 1 2 6 24 120 720 5040 40320 362880 3628800 39916800 479001600 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010842'>A010842</a></td>
    <td style = "text-align: left;">[1 3 10 38 168 872 5296 37200 297856 2681216 26813184 294947072 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000023'>A000023</a></td>
    <td style = "text-align: left;">[1 -1 2 -2 8 8 112 656 5504 49024 491264 5401856 64826368 842734592 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010844'>A010844</a></td>
    <td style = "text-align: left;">[1 3 13 79 633 6331 75973 1063623 17017969 306323443 6126468861 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010845'>A010845</a></td>
    <td style = "text-align: left;">[1 4 25 226 2713 40696 732529 15383110 369194641 9968255308 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyValn</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A277452'>A277452</a></td>
    <td style = "text-align: left;">[1 2 13 226 7889 458026 39684637 4788052298 766526598721 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002720'>A002720</a></td>
    <td style = "text-align: left;">[1 2 7 34 209 1546 13327 130922 1441729 17572114 234662231 3405357682 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009940'>A009940</a></td>
    <td style = "text-align: left;">[1 0 -1 -4 -15 -56 -185 -204 6209 112400 1520271 19165420 237686449 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A343276'>A343276</a></td>
    <td style = "text-align: left;">[0 1 10 81 652 5545 50886 506905 5480056 64116657 808856290 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A093964'>A093964</a></td>
    <td style = "text-align: left;">[0 1 6 33 196 1305 9786 82201 767208 7891281 88776910 1085051121 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001339'>A001339</a></td>
    <td style = "text-align: left;">[1 3 11 49 261 1631 11743 95901 876809 8877691 98641011 1193556233 ]</td>
  </tr>
</table>
```
