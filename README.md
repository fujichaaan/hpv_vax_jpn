# Low Coverage of HPV VAX in JPN 🇯🇵
This page curates codes and figs for highlighting low HPV (Human Papilloma Virus) vaccination coverage in Japan.<br>
The following figure is uploaded on twitter on April 1st, 2023, the day for HPV 9-valent vaccine covered by public healthcare expenditure in Japan.

![Final_eng](https://user-images.githubusercontent.com/19466700/227751121-3fc209f4-4d12-48bb-a7eb-7f5f8e7cc56d.jpeg)

<br>

## 1. The main message 
The coverage of the first dose in Japan was quite low (0.3%) in 2019 compared with other countries. It was 98th of 99 countries. Even though it has been getting back to 14.4% (Reports from Minpapi project 2021), there is still a huge gap between other high-income countries.

<br>

## 2. Original dataset and plots
- R code for 日本語 is <a href="https://github.com/fujichaaan/hpv_vax_jpn/blob/main/code_jpn.R">HERE</a><br>
- R code for English is <a href="https://github.com/fujichaaan/hpv_vax_jpn/blob/main/code_eng.R">HERE</a>
- Dataset is <a href="https://github.com/fujichaaan/hpv_vax_jpn/blob/main/hpv2.csv">HERE</a>

<br> 

Data structure is like this:

<table>
    <tr>
      <th>iso3</th>
      <th>are</th>
      <th>hpv</th>
    </tr>
    <tr>
      <td>NOR</td>
      <td>Europe</td>
      <td>93</td>
    </tr>
    <tr>
      <td>KNA</td>
      <td>Americas</td>
      <td>91</td>
    </tr>
    <tr>
      <td>BRN</td>
      <td>Asia-Pcific</td>
      <td>90</td>
    </tr>
    <tr>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
  </table>

<br>

- iso3: Country name in three letters (ISO-3)
- area: Regional information
- hpv: Country-specific HPV Vaccination coverage (first dose) in female (from Ref.2)

<br>

## 3. References
 
1. Minpapi Projects [<a href="https://minpapi.jp/">Website</a>]
2. Bruni L, et al. Prev Med. 2021;144:106399. [<a href="https://www.sciencedirect.com/science/article/pii/S0091743520304308#s0050">paper</a>]

<br>

## 4. Questions/COI
There are no conflicts of interest to be declared regarding this page.<br>
If you find any mistakes/bugs on this page and code, please contact me via e-mail.

<b>Ryosuke FUJII, PhD</b><br>
Eurac Research 🍕 /Fujita Health University　🍣 <br>
rfujii [at] fujita-hu.ac.jp
