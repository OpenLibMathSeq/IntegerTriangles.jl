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
    <td style = "text-align: left;">Trinomial</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A111808'>A111808</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 3, 1, 3, 6, 7</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A094531'>A094531</a></td>
    <td style = "text-align: left;">1, 1, 1, 3, 2, 1, 7, 6, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">InvRev </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A102587'>A102587</a></td>
    <td style = "text-align: left;">1, -1, 1, -1, -2, 1, 2, 0, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 1 2 1 3 3 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 2, 1, 3, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 1 1 2 1 1 6 3 1 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 1, 6, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A027914'>A027914</a></td>
    <td style = "text-align: left;">1, 2, 6, 17, 50, 147, 435, 1290, 3834, 11411</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 4 7 30 61 253 547 2194 4921 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 7, 30, 61, 253, 547, 2194, 4921</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 2 10 20 86 182 743 1640 6490 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 2, 10, 20, 86, 182, 743, 1640, 6490</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A246437'>A246437</a></td>
    <td style = "text-align: left;">1, 0, 2, -3, 10, -25, 71, -196, 554, -1569</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 1 2 3 7 11 23 38 78 132 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 3, 7, 11, 23, 38, 78, 132</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A027913'>A027913</a></td>
    <td style = "text-align: left;">1, 1, 2, 3, 10, 15, 50, 77, 266, 414</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A027908'>A027908</a></td>
    <td style = "text-align: left;">1, 2, 10, 50, 266, 1452, 8074, 45474, 258570, 1481108</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002426'>A002426</a></td>
    <td style = "text-align: left;">1, 1, 3, 7, 19, 51, 141, 393, 1107, 3139</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 11 39 139 493 1745 6163 21731 76521 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 11, 39, 139, 493, 1745, 6163, 21731, 76521</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 -1 3 -1 11 9 57 111 387 989 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 3, -1, 11, 9, 57, 111, 387, 989</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 17 87 481 2663 14993 84983 485057 2782023 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 17, 87, 481, 2663, 14993, 84983, 485057, 2782023</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 4 34 253 2074 16999 142255 1199776 10203946 87281983 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 34, 253, 2074, 16999, 142255, 1199776, 10203946, 87281983</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A082759'>A082759</a></td>
    <td style = "text-align: left;">1, 2, 8, 35, 160, 752, 3599, 17446, 85376, 420884</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 0 0 -3 0 0 15 0 0 -84 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, -3, 0, 0, 15, 0, 0, -84</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 14 90 492 2330 10206 42147 166872 639414 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 14, 90, 492, 2330, 10206, 42147, 166872, 639414</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[0 1 8 36 148 560 2034 7161 24672 83592 ]'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 8, 36, 148, 560, 2034, 7161, 24672, 83592</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=[1 3 14 53 198 707 2469 8451 28506 95003 ]'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 14, 53, 198, 707, 2469, 8451, 28506, 95003</td>
  </tr>
</table>
```
