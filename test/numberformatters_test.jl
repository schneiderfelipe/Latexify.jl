using Latexify
using Test
import Latexify: PlainNumberFormatter, PrintfNumberFormatter

@test FancyNumberFormatter() == FancyNumberFormatter(4) == FancyNumberFormatter("%.4g", "\\cdot") == FancyNumberFormatter("%.4g", s"\g<mantissa> \\cdot 10^{\g<sign_exp>\g<mag_exp>}")

x = -23.4728979e7

@test PlainNumberFormatter()(x) == "-2.34728979e8"
@test PrintfNumberFormatter("%.4g")(x) == "-2.347e+08"
@test StyledNumberFormatter()(x) == "-2.347 \\mathrm{e}{8}"
@test FancyNumberFormatter()(x) == "-2.347 \\cdot 10^{8}"
@test FancyNumberFormatter("%.5E", s"\g<mantissa>,\g<before_dp>,\g<sign>,\g<before_dp_nosign>,\g<after_dp>,\g<e_or_E>,\g<raw_exp>,\g<sign_exp>,\g<mag_exp>")(x) == "-2.34729,-2,-,2,34729,E,+08,,8"

@test StyledNumberFormatter(4) == StyledNumberFormatter()

xne = -23.4728979e-7

@test FancyNumberFormatter("%.5E", s"\g<mantissa>,\g<before_dp>,\g<sign>,\g<before_dp_nosign>,\g<after_dp>,\g<e_or_E>,\g<raw_exp>,\g<sign_exp>,\g<mag_exp>")(xne) == "-2.34729,-2,-,2,34729,E,-06,-,6"

y = 0xf43

@test StyledNumberFormatter()(y) == FancyNumberFormatter()(y) == "\\mathtt{0x0f43}"

@test SiunitxNumberFormatter()(x) == "\\num{-2.34728979e8}"
@test SiunitxNumberFormatter(version=2)(x) == "\\num{-2.34728979e8}"
@test SiunitxNumberFormatter(format_options="something")(x) == "\\num[something]{-2.34728979e8}"
@test SiunitxNumberFormatter(format_options="[something]")(x) == "\\num[something]{-2.34728979e8}"

@test SiunitxNumberFormatter()([1,2,4]) == "\\numlist{1;2;4}"
@test SiunitxNumberFormatter()(1:4) == "\\numrange{1}{4}"

@test !SiunitxNumberFormatter().simple
@test SiunitxNumberFormatter(simple=true).simple
