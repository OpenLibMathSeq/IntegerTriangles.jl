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
    <td style = "text-align: left;">Swing</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,1,4,2,2,8,4,4,6,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 1, 4, 2, 2, 8, 4, 4, 6</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,2,2,4,6,4,4,8,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 2, 2, 4, 6, 4, 4, 8</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,4,1,8,2,16,4,2,32,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 4, 1, 8, 2, 16, 4, 2, 32</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,1,4,3,1,8,8,4,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 1, 4, 3, 1, 8, 8, 4, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A328002'>A328002</a></td>
    <td style = "text-align: left;">1, 3, 8, 22, 50, 130, 280, 700, 1470, 3570</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331552'>A331552</a></td>
    <td style = "text-align: left;">1, 2, 6, 12, 30, 60, 140, 280, 630, 1260</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,2,10,20,70,140,420,840,2310,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 2, 10, 20, 70, 140, 420, 840, 2310</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,4,2,10,10,0,140,210,1050,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 4, 2, 10, -10, 0, -140, -210, -1050</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,5,10,22,44,94,188,382,764,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 5, 10, 22, 44, 94, 188, 382, 764</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,2,4,8,16,48,96,96,192,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 2, 4, 8, 16, 48, 96, 96, 192</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A253665'>A253665</a></td>
    <td style = "text-align: left;">1, 2, 8, 48, 96, 960, 1280, 17920, 17920, 322560</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000079'>A000079</a></td>
    <td style = "text-align: left;">1, 2, 4, 8, 16, 32, 64, 128, 256, 512</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A056040'>A056040</a></td>
    <td style = "text-align: left;">1, 1, 2, 6, 6, 30, 20, 140, 70, 630</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,5,22,94,382,1558,6252,25148,100662,403278,'>nomatch</a></td>
    <td style = "text-align: left;">1, 5, 22, 94, 382, 1558, 6252, 25148, 100662, 403278</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,14,50,206,794,3196,12644,50646,201954,'>nomatch</a></td>
    <td style = "text-align: left;">1, -3, 14, -50, 206, -794, 3196, -12644, 50646, -201954</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,16,80,256,1472,4224,26368,70656,463872,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 16, 80, 256, 1472, 4224, 26368, 70656, 463872</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,5,28,218,922,9134,32848,371876,1203022,14806334,'>nomatch</a></td>
    <td style = "text-align: left;">1, 5, 28, 218, 922, 9134, 32848, 371876, 1203022, 14806334</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,10,38,150,602,2436,9900,40326,164450,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 10, 38, 150, 602, 2436, 9900, 40326, 164450</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,2,10,98,588,3036,14586,67210,'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 2, -2, -10, 98, -588, 3036, -14586, 67210</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,10,74,244,1238,3196,13252,30984,112998,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 10, 74, 244, 1238, 3196, 13252, 30984, 112998</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,30,84,318,756,2492,5544,16758,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 30, 84, 318, 756, 2492, 5544, 16758</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,14,52,134,448,1036,3192,7014,20328,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 14, 52, 134, 448, 1036, 3192, 7014, 20328</td>
  </tr>
</table>
```
