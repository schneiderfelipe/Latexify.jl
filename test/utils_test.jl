xdoty_tex = L"x \cdot y"

#= This test fails after updating dvisvgm, can this functionality be tested in a less dependant way?
if Sys.islinux()
    render(xdoty_tex, MIME("image/svg"); name=name, open=false)
    svg = open("$(name).svg") do f
        read(f, String)
    end
    @test svg == raw"""
    <?xml version='1.0' encoding='UTF-8'?>
    <!-- This file was generated by dvisvgm 2.10 -->
    <svg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='25.707544pt' height='9.165631pt' viewBox='-72.000004 -72.000009 25.707544 9.165631'>
    <defs>
    <path id='g0-1' d='M2.75447-3.586549C2.75447-4.002589 2.410161-4.346897 1.994121-4.346897S1.233773-4.002589 1.233773-3.586549S1.578082-2.826201 1.994121-2.826201S2.75447-3.170509 2.75447-3.586549Z'/>
    <path id='g1-120' d='M6.800097-5.853248C6.341018-5.767171 6.168864-5.422862 6.168864-5.150284C6.168864-4.805976 6.441442-4.691206 6.642289-4.691206C7.072674-4.691206 7.373945-5.064207 7.373945-5.451554C7.373945-6.054095 6.685327-6.326672 6.082787-6.326672C5.207669-6.326672 4.719898-5.465901 4.590783-5.193323C4.26082-6.269288 3.371356-6.326672 3.113124-6.326672C1.649813-6.326672 .875118-4.447321 .875118-4.131704C.875118-4.07432 .932503-4.002589 1.032926-4.002589C1.147696-4.002589 1.176388-4.088666 1.20508-4.146051C1.692851-5.738478 2.654046-6.039748 3.070086-6.039748C3.715665-6.039748 3.84478-5.437208 3.84478-5.092899C3.84478-4.777283 3.758703-4.447321 3.586549-3.758703L3.098778-1.793274C2.883585-.932503 2.467546-.143462 1.707197-.143462C1.635466-.143462 1.276811-.143462 .975541-.329963C1.492004-.430386 1.606774-.860772 1.606774-1.032926C1.606774-1.31985 1.391581-1.492004 1.119003-1.492004C.774695-1.492004 .401693-1.190734 .401693-.731656C.401693-.129116 1.075965 .143462 1.692851 .143462C2.381468 .143462 2.869239-.401693 3.170509-.989888C3.400048-.143462 4.117358 .143462 4.648167 .143462C6.111479 .143462 6.886174-1.73589 6.886174-2.051506C6.886174-2.123237 6.828789-2.180622 6.742712-2.180622C6.613596-2.180622 6.59925-2.108891 6.556211-1.994121C6.168864-.731656 5.336785-.143462 4.691206-.143462C4.189089-.143462 3.916511-.516463 3.916511-1.104657C3.916511-1.420273 3.973896-1.649813 4.203435-2.596661L4.705552-4.547744C4.920745-5.408516 5.408516-6.039748 6.068441-6.039748C6.097133-6.039748 6.498827-6.039748 6.800097-5.853248Z'/>
    <path id='g1-121' d='M3.773049 1.606774C3.385702 2.151929 2.826201 2.6397 2.123237 2.6397C1.951083 2.6397 1.262465 2.611008 1.047272 1.951083C1.090311 1.965429 1.162042 1.965429 1.190734 1.965429C1.62112 1.965429 1.908044 1.592428 1.908044 1.262465S1.635466 .817733 1.420273 .817733C1.190734 .817733 .688617 .989888 .688617 1.692851C.688617 2.424507 1.305504 2.926624 2.123237 2.926624C3.557857 2.926624 5.006822 1.606774 5.408516 .014346L6.814443-5.58067C6.828789-5.652401 6.857482-5.738478 6.857482-5.824555C6.857482-6.039748 6.685327-6.18321 6.470134-6.18321C6.341018-6.18321 6.039748-6.125826 5.924979-5.69544L4.86336-1.477658C4.791629-1.219427 4.791629-1.190734 4.67686-1.032926C4.389936-.631233 3.916511-.143462 3.227894-.143462C2.424507-.143462 2.352776-.932503 2.352776-1.31985C2.352776-2.137583 2.740123-3.24224 3.127471-4.275166C3.285279-4.691206 3.371356-4.892053 3.371356-5.178977C3.371356-5.781517 2.94097-6.326672 2.238007-6.326672C.918157-6.326672 .387347-4.246474 .387347-4.131704C.387347-4.07432 .444732-4.002589 .545155-4.002589C.674271-4.002589 .688617-4.059973 .746002-4.26082C1.090311-5.465901 1.635466-6.039748 2.194968-6.039748C2.324084-6.039748 2.567969-6.039748 2.567969-5.566324C2.567969-5.193323 2.410161-4.777283 2.194968-4.232128C1.492004-2.352776 1.492004-1.879352 1.492004-1.535043C1.492004-.172154 2.467546 .143462 3.184855 .143462C3.600895 .143462 4.117358 .014346 4.619475-.516463L4.633821-.502117C4.418628 .344309 4.275166 .90381 3.773049 1.606774Z'/>
    </defs>
    <g id='page1'>
    <use x='-72.000004' y='-65.623905' xlink:href='#g1-120'/>
    <use x='-60.829507' y='-65.623905' xlink:href='#g0-1'/>
    <use x='-53.656444' y='-65.623905' xlink:href='#g1-121'/>
    </g>
    </svg>"""
end
# =#

filename = Latexify._writetex(xdoty_tex)
tex = read(filename, String)
@test tex == replace(raw"""
\documentclass[varwidth=true]{standalone}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{unicode-math}
\begin{document}
{
    \Large
    $x \cdot y$
}
\end{document}
""", "\r\n"=>"\n")

filename = Latexify._writetex(L"\ce{ 2 P_1 &<=>[k_{+}][k_{-}] D_{1}}")
tex = read(filename, String)
@test tex == replace(raw"""
\documentclass[varwidth=true]{standalone}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{unicode-math}
\usepackage{mhchem}
\begin{document}
{
    \Large
    $\ce{ 2 P_1 &<=>[k_{+}][k_{-}] D_{1}}$
}
\end{document}
""", "\r\n"=>"\n")

filename = Latexify._writetex(L"\qty{135}{nm}"; documentclass=("article", "a4paper"), packages=("siunitx",))
tex = read(filename, String)
@test tex == replace(raw"""
\documentclass[a4paper]{article}
\usepackage{siunitx}
\begin{document}
{
    \Large
    $\qty{135}{nm}$
}
\end{document}
""", "\r\n"=>"\n")

@test Latexify._packagename("hi") == "{hi}"
@test Latexify._packagename(("hi", "x=5")) == "[x=5]{hi}"
@test Latexify._packagename(("hi", "x=5", "y")) == "[x=5, y]{hi}"

@test occursin("MathJax", Latexify.html_wrap(latexify(:(sin(α)))))
@test Latexify.best_displayable() isa MIME

#@test_throws Latexify.LatexifyRenderError render(L"x^2^3") # Does not run on Windows and Mac CI
logfile = tempname()
open(logfile, "w") do io
    println(io, raw"""
            This is LuaHBTeX, Version 1.18.0 (TeX Live 2024/Arch Linux)  (format=lualatex 2024.4.3)  7 AUG 2024 14:19
            restricted system commands enabled.
            ** Skipping many files **
            LaTeX Font Info:    Trying to load font information for U+msb on input line 5.
            (/usr/share/texmf-dist/tex/latex/amsfonts/umsb.fd
            File: umsb.fd 2013/01/14 v3.01 AMS symbols B
            )
            ! Double superscript.
            l.8     $x^2^
            3$
            I treat `x^1^2' essentially like `x^1{}^2'.
            ** More lines skipped **
            """)
end
e = Latexify.LatexifyRenderError(logfile)
@test sprint(showerror, e) == """
an error occured while rendering LaTeX: \n\tDouble superscript.
\tl.8     \$x^2^
Check the log file at $logfile for more information"""

@test_throws ArgumentError render(L"x^2"; use_tectonic=true)
using tectonic_jll
pdf_file = render(L"x^2"; open=false) # should now not throw
@test isfile(pdf_file)
@test_throws Latexify.LatexifyRenderError render(L"x^2^3"; open=false)
