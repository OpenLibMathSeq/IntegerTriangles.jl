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
    <td style = "text-align: left;">StirlingCycle</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048994'>A048994</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 2, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A054654'>A054654</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 1, 0, 1, 3, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A048993'>A048993</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, -1, 1, 0, 1, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A106800'>A106800</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, -1, 0, 1, -3, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331327'>A331327</a></td>
    <td style = "text-align: left;">1, 0, 0, 1, 0, 1, 0, 2, 1, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyTri </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,0,1,1,0,2,2,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 1, 1, 0, 2, 2, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A105752'>A105752</a></td>
    <td style = "text-align: left;">1, 0, 1, 3, 12, 60, 360, 2520, 20160, 181440</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001710'>A001710</a></td>
    <td style = "text-align: left;">0, 1, 1, 3, 12, 60, 360, 2520, 20160, 181440</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A019590'>A019590</a></td>
    <td style = "text-align: left;">1, -1, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,1,1,3,9,36,176,1030,7039,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 3, 9, 36, 176, 1030, 7039</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A154415'>A154415</a></td>
    <td style = "text-align: left;">1, 0, 1, 2, 11, 50, 225, 1624, 6769, 67284</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A187646'>A187646</a></td>
    <td style = "text-align: left;">1, 1, 11, 225, 6769, 269325, 13339535, 790943153, 54631129553, 4308105301929</td>
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
    <td style = "text-align: left;"><a href='https://oeis.org/A001147'>A001147</a></td>
    <td style = "text-align: left;">1, 1, 3, 15, 105, 945, 10395, 135135, 2027025, 34459425</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330797'>A330797</a></td>
    <td style = "text-align: left;">1, 1, -1, 3, -15, 105, -945, 10395, -135135, 2027025</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000142'>A000142</a></td>
    <td style = "text-align: left;">1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,3,12,60,360,2520,20160,181440,1814400,19958400,'>nomatch</a></td>
    <td style = "text-align: left;">1, 3, 12, 60, 360, 2520, 20160, 181440, 1814400, 19958400</td>
  </tr>
  <tr>
    <td style = "text-align: left;">BinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A211210'>A211210</a></td>
    <td style = "text-align: left;">1, 1, 3, 16, 115, 1021, 10696, 128472, 1734447, 25937683</td>
  </tr>
  <tr>
    <td style = "text-align: left;">IBinTrans </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A317274'>A317274</a></td>
    <td style = "text-align: left;">1, 1, -1, -2, 19, -79, 76, 2640, -36945, 329371</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A151881'>A151881</a></td>
    <td style = "text-align: left;">0, 1, 5, 23, 120, 724, 5012, 39332, 345832, 3371976</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000254'>A000254</a></td>
    <td style = "text-align: left;">0, 1, 3, 11, 50, 274, 1764, 13068, 109584, 1026576</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000774'>A000774</a></td>
    <td style = "text-align: left;">1, 2, 5, 17, 74, 394, 2484, 18108, 149904, 1389456</td>
  </tr>
</table>
```
