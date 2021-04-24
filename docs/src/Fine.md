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
    <td style = "text-align: left;">Fine</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A321622'>A321622</a></td>
    <td style = "text-align: left;">1, 1, 1, 0, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,1,0,1,1,1,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 0, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,1,1,1,0,1,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -1, 1, -1, 0, -1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,1,1,1,1,0,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -1, 1, 1, -1, 0, -1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,0,1,1,1,2,1,1,6,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 1, 1, 2, 1, 1, 6</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,0,2,1,1,2,3,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 0, 2, 1, 1, 2, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002420'>A002420</a></td>
    <td style = "text-align: left;">1, 2, 2, 4, 10, 28, 84, 264, 858, 2860</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A115140'>A115140</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 5, 14, 42, 132, 429, 1430</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000108'>A000108</a></td>
    <td style = "text-align: left;">0, 1, 1, 2, 5, 14, 42, 132, 429, 1430</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,2,4,11,31,96,306,1010,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 4, 11, 31, 96, 306, 1010</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,7,10,29,40,136,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 7, 10, 29, 40, 136</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,10,40,181,812,3732,17280,80740,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 10, 40, 181, 812, 3732, 17280, 80740</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A064310'>A064310</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 2, 6, 18, 57, 186, 622</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,3,15,75,423,2547,16047,104475,697335,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 3, 15, 75, 423, 2547, 16047, 104475, 697335</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,5,7,77,399,2661,17175,115517,'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, -1, -5, 7, -77, 399, -2661, 17175, -115517</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,6,15,42,126,396,1287,4290,14586,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 6, 15, 42, 126, 396, 1287, 4290, 14586</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A100320'>A100320</a></td>
    <td style = "text-align: left;">1, 4, 12, 40, 140, 504, 1848, 6864, 25740, 97240</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,3,8,35,162,756,3600,17451,85670,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 3, 8, 35, 162, 756, 3600, 17451, 85670</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,0,5,0,28,0,165,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, -1, 0, -5, 0, -28, 0, -165, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,5,14,37,106,322,1020,3333,11154,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 5, 14, 37, 106, 322, 1020, 3333, 11154</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,3,6,15,42,126,396,1287,4290,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 3, 6, 15, 42, 126, 396, 1287, 4290</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,5,10,25,70,210,660,2145,7150,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 5, 10, 25, 70, 210, 660, 2145, 7150</td>
  </tr>
</table>
```
