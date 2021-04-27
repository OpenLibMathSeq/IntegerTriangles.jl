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
    <td style = "text-align: left;">Uni</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A097806'>A097806</a></td>
    <td style = "text-align: left;">1, -1, 1, 0, -1, 1, 0, 0, -1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A103451'>A103451</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -1, 0, 1, -1, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A097806'>A097806</a></td>
    <td style = "text-align: left;">1, -1, 1, 0, -1, 1, 0, 0, -1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A104878'>A104878</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 1, 3, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000027'>A000027</a></td>
    <td style = "text-align: left;">1, 2, 3, 4, 5, 6, 7, 8, 9, 10</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008619'>A008619</a></td>
    <td style = "text-align: left;">1, 1, 2, 2, 3, 3, 4, 4, 5, 5</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001057'>A001057</a></td>
    <td style = "text-align: left;">0, 1, 1, 2, 2, 3, 3, 4, 4, 5</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A015301'>A015301</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 0, 1, 0, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A008619'>A008619</a></td>
    <td style = "text-align: left;">1, 1, 2, 2, 3, 3, 4, 4, 5, 5</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
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
    <td style = "text-align: left;"><a href='https://oeis.org/A126646'>A126646</a></td>
    <td style = "text-align: left;">1, 3, 7, 15, 31, 63, 127, 255, 511, 1023</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A077925'>A077925</a></td>
    <td style = "text-align: left;">1, -1, 3, -5, 11, -21, 43, -85, 171, -341</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126646'>A126646</a></td>
    <td style = "text-align: left;">1, 3, 7, 15, 31, 63, 127, 255, 511, 1023</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A003462'>A003462</a></td>
    <td style = "text-align: left;">1, 4, 13, 40, 121, 364, 1093, 3280, 9841, 29524</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000079'>A000079</a></td>
    <td style = "text-align: left;">1, 2, 4, 8, 16, 32, 64, 128, 256, 512</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000330'>A000330</a></td>
    <td style = "text-align: left;">0, 1, 5, 14, 30, 55, 91, 140, 204, 285</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000217'>A000217</a></td>
    <td style = "text-align: left;">0, 1, 3, 6, 10, 15, 21, 28, 36, 45</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A089594'>A089594</a></td>
    <td style = "text-align: left;">1, 3, 6, 10, 15, 21, 28, 36, 45, 55</td>
  </tr>
</table>
```
