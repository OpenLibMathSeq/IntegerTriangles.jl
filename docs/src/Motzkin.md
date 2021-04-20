```@raw html
<style>
  table, td, th {
      border-collapse: collapse;
      font-family: sans-serif;
      color: blue;
  }

  td, th {
      border-bottom: 0;
      padding: 4px
  }

  tr:nth-child(odd) {
      background: #eee;
  }

  tr:nth-child(even) {
      background: #fff;
  }

  tr.header {
      background: orange !important;
      color: white;
      font-weight: bold;
  }

  tr.subheader {
      background: lightgray !important;
      color: black;
  }

  tr.headerLastRow {
      border-bottom: 2px solid black;
  }

  th.rowNumber, td.rowNumber {
      text-align: right;
  }
</style>
<body>
<table>
  <tr class = "header headerLastRow">
    <th style = "text-align: left;">Trait</th>
    <th style = "text-align: left;">ANumber</th>
    <th style = "text-align: left;">Sequence</th>
  </tr>
  <tr>
    <td style = "text-align: left;">Motzkin</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A064189'>A064189</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 2, 1, 4, 5, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A026300'>A026300</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 2, 1, 3, 5, 4</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A101950'>A101950</a></td>
    <td style = "text-align: left;">1, -1, 1, 0, -2, 1, 1, 1, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,0,1,3,1,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -2, 0, 1, -3, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005773'>A005773</a></td>
    <td style = "text-align: left;">1, 2, 5, 13, 35, 96, 267, 750, 2123, 6046</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A002426'>A002426</a></td>
    <td style = "text-align: left;">1, 1, 3, 7, 19, 51, 141, 393, 1107, 3139</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005717'>A005717</a></td>
    <td style = "text-align: left;">0, 1, 2, 6, 16, 45, 126, 357, 1016, 2907</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005043'>A005043</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 3, 6, 15, 36, 91, 232</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A342912'>A342912</a></td>
    <td style = "text-align: left;">1, 1, 3, 6, 15, 36, 91, 232, 603, 1585</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,5,9,25,44,133,230,726,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 9, 25, 44, 133, 230, 726</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A026302'>A026302</a></td>
    <td style = "text-align: left;">1, 2, 9, 44, 230, 1242, 6853, 38376, 217242, 1239980</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001006'>A001006</a></td>
    <td style = "text-align: left;">1, 1, 2, 4, 9, 21, 51, 127, 323, 835</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330799'>A330799</a></td>
    <td style = "text-align: left;">1, 3, 13, 59, 285, 1419, 7245, 37659, 198589, 1059371</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330800'>A330800</a></td>
    <td style = "text-align: left;">1, -1, 5, -17, 77, -345, 1653, -8097, 40733, -208553</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A059738'>A059738</a></td>
    <td style = "text-align: left;">1, 3, 10, 34, 117, 405, 1407, 4899, 17083, 59629</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,17,73,315,1362,5895,25528,110579,479068,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 17, 73, 315, 1362, 5895, 25528, 110579, 479068</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransUnos </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005773'>A005773</a></td>
    <td style = "text-align: left;">1, 2, 5, 13, 35, 96, 267, 750, 2123, 6046</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransAlts </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A005043'>A005043</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 3, 6, 15, 36, 91, 232</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,26,100,361,1254,4245,14108,46247,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 26, 100, 361, 1254, 4245, 14108, 46247</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330796'>A330796</a></td>
    <td style = "text-align: left;">0, 1, 4, 14, 46, 147, 462, 1437, 4438, 13637</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000244'>A000244</a></td>
    <td style = "text-align: left;">1, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683</td>
  </tr>
</table>
```