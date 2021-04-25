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
    <td style = "text-align: left;">EulerT</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A162660'>A162660</a></td>
    <td style = "text-align: left;">0, 1, 0, 0, 2, 0, -2, 0, 3, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,0,1,0,2,0,0,3,0,2,'>nomatch</a></td>
    <td style = "text-align: left;">0, 0, 1, 0, 2, 0, 0, 3, 0, -2</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,0,0,2,2,0,0,0,16,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 0, 0, -2, 2, 0, 0, 0, 16</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,0,0,1,0,2,2,1,0,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 0, 0, 1, 0, -2, 2, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009832'>A009832</a></td>
    <td style = "text-align: left;">0, 1, 2, 1, -4, 1, 62, 1, -1384, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000035'>A000035</a></td>
    <td style = "text-align: left;">0, 1, 0, 1, 0, 1, 0, 1, 0, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,0,2,0,4,0,62,0,1384,0,'>nomatch</a></td>
    <td style = "text-align: left;">0, 0, 2, 0, -4, 0, 62, 0, -1384, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009832'>A009832</a></td>
    <td style = "text-align: left;">0, 1, -2, 1, 4, 1, -62, 1, 1384, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,0,0,0,11,0,192,0,6061,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 0, 0, 0, 11, 0, -192, 0, 6061</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,2,0,0,20,40,0,0,2016,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 2, 0, 0, -20, -40, 0, 0, 2016</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A214447'>A214447</a></td>
    <td style = "text-align: left;">0, 2, 0, -40, 0, 4032, 0, -933504, 0, 385848320</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A009006'>A009006</a></td>
    <td style = "text-align: left;">0, 1, 0, -2, 0, 16, 0, -272, 0, 7936</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000004'>A000004</a></td>
    <td style = "text-align: left;">0, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,2,5,28,181,1382,12305,125368,1436521,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 2, -5, -28, 181, 1382, -12305, -125368, 1436521</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,2,5,28,181,1382,12305,125368,1436521,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 2, -5, -28, 181, 1382, -12305, -125368, 1436521</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,4,10,16,16,64,400,256,7424,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 4, 10, 16, 16, 64, 400, 256, -7424</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,25,84,241,666,2185,7944,19681,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 25, 84, 241, 666, 2185, 7944, 19681</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,4,7,16,159,188,4383,26560,104591,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 4, 7, -16, -159, -188, 4383, 26560, -104591</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,4,7,16,159,188,4383,26560,104591,'>nomatch</a></td>
    <td style = "text-align: left;">0, -1, -4, -7, 16, 159, 188, -4383, -26560, 104591</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,0,2,12,28,0,114,476,3480,12384,'>nomatch</a></td>
    <td style = "text-align: left;">0, 0, 2, 12, 28, 0, -114, 476, 3480, -12384</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,0,2,6,4,20,6,434,8,12456,'>nomatch</a></td>
    <td style = "text-align: left;">0, 0, 2, 6, 4, -20, 6, 434, 8, -12456</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,4,7,0,19,68,435,1376,12455,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 4, 7, 0, -19, 68, 435, -1376, -12455</td>
  </tr>
</table>
```
