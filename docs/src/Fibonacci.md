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
    <td style = "text-align: left;">Fibonacci</td>
    <td style = "text-align: left;"></td>
    <td style = "text-align: left;"></td>
  </tr>
  <tr>
    <td style = "text-align: left;">Flat </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A193737'>A193737</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 2, 4, 3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Reverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A193736'>A193736</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 2, 1, 1, 3, 4, 2</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Inverse </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,1,1,2,3,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, -1, 1, 1, -2, 1, -1, 2, -3, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RevInv </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,1,1,2,1,1,3,2,1,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, -1, 1, -2, 1, 1, -3, 2, -1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">sum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052542'>A052542</a></td>
    <td style = "text-align: left;">1, 2, 4, 10, 24, 58, 140, 338, 816, 1970</td>
  </tr>
  <tr>
    <td style = "text-align: left;">EvenSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A215928'>A215928</a></td>
    <td style = "text-align: left;">1, 1, 2, 5, 12, 29, 70, 169, 408, 985</td>
  </tr>
  <tr>
    <td style = "text-align: left;">OddSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000129'>A000129</a></td>
    <td style = "text-align: left;">0, 1, 2, 5, 12, 29, 70, 169, 408, 985</td>
  </tr>
  <tr>
    <td style = "text-align: left;">AltSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">DiagSum </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A011782'>A011782</a></td>
    <td style = "text-align: left;">1, 1, 2, 4, 8, 16, 32, 64, 128, 256</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Middle </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,1,2,4,8,19,36,91,170,446,'>nomatch</a></td>
    <td style = "text-align: left;">1, 1, 2, 4, 8, 19, 36, 91, 170, 446</td>
  </tr>
  <tr>
    <td style = "text-align: left;">Central </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330793'>A330793</a></td>
    <td style = "text-align: left;">1, 2, 8, 36, 170, 826, 4088, 20496, 103752, 529100</td>
  </tr>
  <tr>
    <td style = "text-align: left;">LeftSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A324969'>A324969</a></td>
    <td style = "text-align: left;">1, 1, 1, 2, 3, 5, 8, 13, 21, 34</td>
  </tr>
  <tr>
    <td style = "text-align: left;">RightSide </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000012'>A000012</a></td>
    <td style = "text-align: left;">1, 1, 1, 1, 1, 1, 1, 1, 1, 1</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PosHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A330795'>A330795</a></td>
    <td style = "text-align: left;">1, 3, 9, 39, 153, 615, 2457, 9831, 39321, 157287</td>
  </tr>
  <tr>
    <td style = "text-align: left;">NegHalf </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A006131'>A006131</a></td>
    <td style = "text-align: left;">1, -1, 1, -5, 9, -29, 65, -181, 441, -1165</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal2 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052906'>A052906</a></td>
    <td style = "text-align: left;">1, 3, 9, 30, 99, 327, 1080, 3567, 11781, 38910</td>
  </tr>
  <tr>
    <td style = "text-align: left;">PolyVal3 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=1,4,16,68,288,1220,5168,21892,92736,392836,'>nomatch</a></td>
    <td style = "text-align: left;">1, 4, 16, 68, 288, 1220, 5168, 21892, 92736, 392836</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransUnos </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A052542'>A052542</a></td>
    <td style = "text-align: left;">1, 2, 4, 10, 24, 58, 140, 338, 816, 1970</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransAlts </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A000007'>A000007</a></td>
    <td style = "text-align: left;">1, 0, 0, 0, 0, 0, 0, 0, 0, 0</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransSqrs </td>
    <td style = "text-align: left;"><a href='https://oeis.org/?q=0,1,6,25,92,313,1010,3137,9464,27905,'>nomatch</a></td>
    <td style = "text-align: left;">0, 1, 6, 25, 92, 313, 1010, 3137, 9464, 27905</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat0 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A119915'>A119915</a></td>
    <td style = "text-align: left;">0, 1, 4, 13, 40, 117, 332, 921, 2512, 6761</td>
  </tr>
  <tr>
    <td style = "text-align: left;">TransNat1 </td>
    <td style = "text-align: left;"><a href='https://oeis.org/A331321'>A331321</a></td>
    <td style = "text-align: left;">1, 3, 8, 23, 64, 175, 472, 1259, 3328, 8731</td>
  </tr>
</table>
```