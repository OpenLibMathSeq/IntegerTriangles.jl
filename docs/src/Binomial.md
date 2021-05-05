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
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Trait</td>
    <td style = "text-align: left;">ANumber</td>
    <td style = "text-align: left;">Sequence</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007318'>A007318</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 3 3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007318'>A007318</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 3 3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007318'>A007318</a></td>
    <td style = "text-align: left;">[1 -1 1 1 -2 1 -1 3 -3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007318'>A007318</a></td>
    <td style = "text-align: left;">[1 1 -1 1 -2 1 1 -3 3 -1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007318'>A007318</a></td>
    <td style = "text-align: left;">[1 -1 1 1 -2 1 -1 3 -3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A011973'>A011973</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 2 1 3 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009998'>A009998</a></td>
    <td style = "text-align: left;">[1 1 1 1 2 1 1 4 3 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000079'>A000079</a></td>
    <td style = "text-align: left;">[1 2 4 8 16 32 64 128 256 512 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A011782'>A011782</a></td>
    <td style = "text-align: left;">[1 1 2 4 8 16 32 64 128 256 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A131577'>A131577</a></td>
    <td style = "text-align: left;">[0 1 2 4 8 16 32 64 128 256 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000045'>A000045</a></td>
    <td style = "text-align: left;">[1 1 2 3 5 8 13 21 34 55 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001405'>A001405</a></td>
    <td style = "text-align: left;">[1 1 2 3 6 10 20 35 70 126 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000984'>A000984</a></td>
    <td style = "text-align: left;">[1 2 6 20 70 252 924 3432 12870 48620 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000244'>A000244</a></td>
    <td style = "text-align: left;">[1 3 9 27 81 243 729 2187 6561 19683 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 -1 1 -1 1 -1 1 -1 1 -1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000244'>A000244</a></td>
    <td style = "text-align: left;">[1 3 9 27 81 243 729 2187 6561 19683 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000302'>A000302</a></td>
    <td style = "text-align: left;">[1 4 16 64 256 1024 4096 16384 65536 262144 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000984'>A000984</a></td>
    <td style = "text-align: left;">[1 2 6 20 70 252 924 3432 12870 48620 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126869'>A126869</a></td>
    <td style = "text-align: left;">[1 0 -2 0 6 0 -20 0 70 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001788'>A001788</a></td>
    <td style = "text-align: left;">[0 1 6 24 80 240 672 1792 4608 11520 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001787'>A001787</a></td>
    <td style = "text-align: left;">[0 1 4 12 32 80 192 448 1024 2304 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001792'>A001792</a></td>
    <td style = "text-align: left;">[1 3 8 20 48 112 256 576 1280 2816 ]</td>
  </tr>
</table>
```
