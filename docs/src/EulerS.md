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
    <td style = "text-align: left;">EulerS</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Triangle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A119879'>A119879</a></td>
    <td style = "text-align: left;">[1 0 1 -1 0 1 0 -3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 1 0 -1 1 0 -3 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 -1 1 0 -3 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A119467'>A119467</a></td>
    <td style = "text-align: left;">[1 0 1 1 0 1 0 3 0 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A141665'>A141665</a></td>
    <td style = "text-align: left;">[1 1 0 1 0 1 1 0 3 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -1 1 0 0 5 -3 1 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 -1 1 0 0 5 -3 1 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A247498'>A247498</a></td>
    <td style = "text-align: left;">[1 0 1 -1 1 1 0 0 2 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Sum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[1 1 0 -2 0 16 0 -272 0 7936 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">[1 0 0 0 0 0 0 0 0 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[0 1 0 -2 0 16 0 -272 0 7936 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">[1 -1 0 2 0 -16 0 272 0 -7936 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 0 3 0 -41 0 1024 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 0 3 0 -41 0 1024 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 -3 -6 0 0 175 350 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 0 -3 -6 0 0 175 350 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -6 0 350 0 -56364 0 17824950 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 0 -6 0 350 0 -56364 0 17824950 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A122045'>A122045</a></td>
    <td style = "text-align: left;">[1 0 -1 0 5 0 -61 0 1385 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001586'>A001586</a></td>
    <td style = "text-align: left;">[1 1 -3 -11 57 361 -2763 -24611 250737 2873041 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001586'>A001586</a></td>
    <td style = "text-align: left;">[1 1 -3 -11 57 361 -2763 -24611 250737 2873041 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A119880'>A119880</a></td>
    <td style = "text-align: left;">[1 2 3 2 -3 2 63 2 -1383 2 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A119881'>A119881</a></td>
    <td style = "text-align: left;">[1 3 8 18 32 48 128 528 512 -6912 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 -8 -30 26 840 2696 -22722 -240146 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 -8 -30 26 840 2696 -22722 -240146 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinConv</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 0 -8 -30 26 840 2696 -22722 -240146 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 1 0 -8 -30 26 840 2696 -22722 -240146 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 4 6 -8 -40 96 672 -2176 -19584 ]'>nomatch</a></td>
    <td style = "text-align: left;">[0 1 4 6 -8 -40 96 672 -2176 -19584 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0</td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109573'>A109573</a></td>
    <td style = "text-align: left;">[0 1 2 0 -8 0 96 0 -2176 0 ]</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1</td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 2 2 -2 -8 16 96 -272 -2176 7936 ]'>nomatch</a></td>
    <td style = "text-align: left;">[1 2 2 -2 -8 16 96 -272 -2176 7936 ]</td>
  </tr>
</table>
```
