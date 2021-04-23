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
    <td style = "text-align: left;">Narayana</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A090181'>A090181</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 1, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A131198'>A131198</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 1, 0, 1, 3, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,0,1,1,0,2,3,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, -1, 1, 0, 2, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,0,1,1,0,1,3,2,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, -1, 0, 1, -3, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,0,1,0,1,0,1,1,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 1, 0, 1, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">ConvTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A010054'>A010054</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 0, 0, 1, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,0,1,1,0,2,2,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 2, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000108'>A000108</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A071688'>A071688</a></td>
    <td style = "text-align: left;">1, 0, 1, 3, 7, 20, 66, 217, 715, 2424</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A071684'>A071684</a></td>
    <td style = "text-align: left;">0, 1, 1, 2, 7, 22, 66, 212, 715, 2438</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A090192'>A090192</a></td>
    <td style = "text-align: left;">1, -1, 0, 1, 0, -2, 0, 5, 0, -14</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,1,2,4,8,17,37,82,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 2, 4, 8, 17, 37, 82</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,1,6,10,50,105,490,1176,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 6, 10, 50, 105, 490, 1176</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A125558'>A125558</a></td>
    <td style = "text-align: left;">1, 1, 6, 50, 490, 5292, 60984, 736164, 9202050, 118195220</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001003'>A001003</a></td>
    <td style = "text-align: left;">1, 1, 3, 11, 45, 197, 903, 4279, 20793, 103049</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A154825'>A154825</a></td>
    <td style = "text-align: left;">1, 1, -1, -1, 5, -3, -21, 51, 41, -391</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A006318'>A006318</a></td>
    <td style = "text-align: left;">1, 2, 6, 22, 90, 394, 1806, 8558, 41586, 206098</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A047891'>A047891</a></td>
    <td style = "text-align: left;">1, 3, 12, 57, 300, 1686, 9912, 60213, 374988, 2381322</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransAlts </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A090192'>A090192</a></td>
    <td style = "text-align: left;">1, -1, 0, 1, 0, -2, 0, 5, 0, -14</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A141222'>A141222</a></td>
    <td style = "text-align: left;">0, 1, 5, 22, 95, 406, 1722, 7260, 30459, 127270</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001700'>A001700</a></td>
    <td style = "text-align: left;">0, 1, 3, 10, 35, 126, 462, 1716, 6435, 24310</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A189176'>A189176</a></td>
    <td style = "text-align: left;">1, 2, 5, 15, 49, 168, 594, 2145, 7865, 29172</td>
  </tr>
</table>
```
