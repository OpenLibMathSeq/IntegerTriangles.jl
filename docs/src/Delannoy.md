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
    <td style = "text-align: left;">Delannoy</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008288'>A008288</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 3, 1, 1, 5, 5, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008288'>A008288</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 3, 1, 1, 5, 5, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103136'>A103136</a></td>
    <td style = "text-align: left;">1, -1, 1, 2, -3, 1, -6, 10, -5, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A033878'>A033878</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -3, 2, 1, -5, 10, -6</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103136'>A103136</a></td>
    <td style = "text-align: left;">1, -1, 1, 2, -3, 1, -6, 10, -5, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 1 3 1 5 1 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 3, 1, 5, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 2 1 1 5 3 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 1, 5, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A077985'>A077985</a></td>
    <td style = "text-align: left;">1, 2, 5, 12, 29, 70, 169, 408, 985, 2378</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A116404'>A116404</a></td>
    <td style = "text-align: left;">1, 1, 2, 6, 15, 35, 84, 204, 493, 1189</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 3 6 14 35 85 204 492 1189 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 3, 6, 14, 35, 85, 204, 492, 1189</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A015301'>A015301</a></td>
    <td style = "text-align: left;">1, 0, -1, 0, 1, 0, -1, 0, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 4 7 13 24 44 81 149 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 4, 7, 13, 24, 44, 81, 149</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A026003'>A026003</a></td>
    <td style = "text-align: left;">1, 1, 3, 5, 13, 25, 63, 129, 321, 681</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001850'>A001850</a></td>
    <td style = "text-align: left;">1, 3, 13, 63, 321, 1683, 8989, 48639, 265729, 1462563</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007482'>A007482</a></td>
    <td style = "text-align: left;">1, 3, 11, 39, 139, 495, 1763, 6279, 22363, 79647</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A077020'>A077020</a></td>
    <td style = "text-align: left;">1, -1, -1, 3, -1, -5, 7, 3, -17, 11</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A007482'>A007482</a></td>
    <td style = "text-align: left;">1, 3, 11, 39, 139, 495, 1763, 6279, 22363, 79647</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A015530'>A015530</a></td>
    <td style = "text-align: left;">1, 4, 19, 88, 409, 1900, 8827, 41008, 190513, 885076</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A006139'>A006139</a></td>
    <td style = "text-align: left;">1, 2, 8, 32, 136, 592, 2624, 11776, 53344, 243392</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 -4 0 24 0 -160 0 1120 0 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, -4, 0, 24, 0, -160, 0, 1120, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 7 34 138 503 1709 5524 17204 52061 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 7, 34, 138, 503, 1709, 5524, 17204, 52061</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 5 18 58 175 507 1428 3940 10701 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 5, 18, 58, 175, 507, 1428, 3940, 10701</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A026937'>A026937</a></td>
    <td style = "text-align: left;">1, 3, 10, 30, 87, 245, 676, 1836, 4925, 13079</td>
  </tr>
</table>
```
