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
    <td style = "text-align: left;">Euler</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109449'>A109449</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 2, 3, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,1,1,3,3,2,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 1, 3, 3, 2</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A109449'>A109449</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -2, 1, -2, 3, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,1,1,3,3,2,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -2, 1, 1, -3, 3, -2</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,2,5,3,1,16,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 2, 5, 3, 1, 16</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,1,2,4,3,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 2, 4, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000667'>A000667</a></td>
    <td style = "text-align: left;">1, 2, 4, 9, 24, 77, 294, 1309, 6664, 38177</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A062272'>A062272</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 12, 41, 152, 685, 3472, 19921</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A062161'>A062161</a></td>
    <td style = "text-align: left;">0, 1, 2, 4, 12, 36, 142, 624, 3192, 18256</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A062162'>A062162</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 5, 10, 61, 280, 1665</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,4,9,27,93,392,1898,10493,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 4, 9, 27, 93, 392, 1898, 10493</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,3,6,20,40,175,350,2016,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 3, 6, 20, 40, 175, 350, 2016</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,6,40,350,4032,56364,933504,17824950,385848320,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 6, 40, 350, 4032, 56364, 933504, 17824950, 385848320</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000111'>A000111</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 5, 16, 61, 272, 1385, 7936</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000834'>A000834</a></td>
    <td style = "text-align: left;">1, 3, 9, 35, 177, 1123, 8569, 76355, 777697, 8911683</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,9,33,241,1761,15929,161473,1853281,'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 1, -9, 33, -241, 1761, -15929, 161473, -1853281</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000752'>A000752</a></td>
    <td style = "text-align: left;">1, 3, 9, 28, 93, 338, 1369, 6238, 31993, 183618</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A307878'>A307878</a></td>
    <td style = "text-align: left;">1, 4, 16, 65, 272, 1189, 5506, 27365, 147512, 868129</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,2,6,21,90,467,2824,19383,148414,1251935,'>nomatch</a></td>
    <td style = "text-align: left;">1, 2, 6, 21, 90, 467, 2824, 19383, 148414, 1251935</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,2,1,6,15,0,271,574,5379,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, -2, -1, -6, -15, 0, -271, 574, -5379</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,24,84,300,1182,5292,26936,154224,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 24, 84, 300, 1182, 5292, 26936, 154224</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A231179'>A231179</a></td>
    <td style = "text-align: left;">0, 1, 4, 12, 36, 120, 462, 2058, 10472, 59976</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000737'>A000737</a></td>
    <td style = "text-align: left;">1, 3, 8, 21, 60, 197, 756, 3367, 17136, 98153</td>
  </tr>
</table>
```
