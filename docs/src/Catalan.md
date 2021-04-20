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
    <td style = "text-align: left;">Catalan</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A053121'>A053121</a></td>
    <td style = "text-align: left;">1, 0, 1, 1, 0, 1, 0, 2, 0, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052173'>A052173</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 0, 1, 1, 0, 2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A049310'>A049310</a></td>
    <td style = "text-align: left;">1, 0, 1, -1, 0, 1, 0, -2, 0, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A053119'>A053119</a></td>
    <td style = "text-align: left;">1, 1, 0, 1, 0, -1, 1, 0, -2, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001405'>A001405</a></td>
    <td style = "text-align: left;">1, 1, 2, 3, 6, 10, 20, 35, 70, 126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126869'>A126869</a></td>
    <td style = "text-align: left;">1, 0, 2, 0, 6, 0, 20, 0, 70, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A138364'>A138364</a></td>
    <td style = "text-align: left;">0, 1, 0, 3, 0, 10, 0, 35, 0, 126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001405'>A001405</a></td>
    <td style = "text-align: left;">1, -1, 2, -3, 6, -10, 20, -35, 70, -126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,2,0,5,0,14,0,42,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 2, 0, 5, 0, 14, 0, 42, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,0,2,3,0,0,14,20,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 0, 2, 3, 0, 0, 14, 20, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,0,3,0,20,0,154,0,1260,0,'>nomatch</a></td>
    <td style = "text-align: left;">1, 0, 3, 0, 20, 0, 154, 0, 1260, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126120'>A126120</a></td>
    <td style = "text-align: left;">1, 0, 1, 0, 2, 0, 5, 0, 14, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A121724'>A121724</a></td>
    <td style = "text-align: left;">1, 1, 5, 9, 45, 97, 485, 1145, 5725, 14289</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A121724'>A121724</a></td>
    <td style = "text-align: left;">1, 1, 5, 9, 45, 97, 485, 1145, 5725, 14289</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A054341'>A054341</a></td>
    <td style = "text-align: left;">1, 2, 5, 12, 30, 74, 185, 460, 1150, 2868</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A126931'>A126931</a></td>
    <td style = "text-align: left;">1, 3, 10, 33, 110, 366, 1220, 4065, 13550, 45162</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransUnos </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001405'>A001405</a></td>
    <td style = "text-align: left;">1, 1, 2, 3, 6, 10, 20, 35, 70, 126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransAlts </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A001405'>A001405</a></td>
    <td style = "text-align: left;">1, -1, 2, -3, 6, -10, 20, -35, 70, -126</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,4,11,28,66,152,339,748,1622,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 4, 11, 28, 66, 152, 339, 748, 1622</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A045621'>A045621</a></td>
    <td style = "text-align: left;">0, 1, 2, 5, 10, 22, 44, 93, 186, 386</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000079'>A000079</a></td>
    <td style = "text-align: left;">1, 2, 4, 8, 16, 32, 64, 128, 256, 512</td>
  </tr>
</table>
```