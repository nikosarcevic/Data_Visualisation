prologues       := 3;
outputformat    := "svg";
bboxmargin      := 1bp;
%defaultfont:= "phvr8r";

verbatimtex
    \documentclass{article}
    \usepackage{sansmathfonts}
    \usepackage{bm}
    \begin{document}
etex

outputtemplate  := "electron-white.svg";
beginfig(1);
    label(btex $\bm e$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "muon-white.svg";
beginfig(2);
    label(btex $\bm \mu$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;
outputtemplate  := "tauon-white.svg";
beginfig(3);
    label(btex $\bm \tau$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "eneutrino-white.svg";
beginfig(4);
    label(btex $\bm \nu_e$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "muneutrino-white.svg";
beginfig(5);
    label(btex $\bm \nu_\mu$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "tauneutrino-white.svg";
beginfig(6);
    label(btex $\bm \nu_\tau$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "upquark-white.svg";
beginfig(7);
    label(btex $\bm u$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "downquark-white.svg";
beginfig(8);
    label(btex $\bm d$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "charmquark-white.svg";
beginfig(9);
    label(btex $\bm c$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "strangequark-white.svg";
beginfig(10);
    label(btex $\bm s$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "topquark-white.svg";
beginfig(11);
    label(btex $\bm t$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "bottomquark-white.svg";
beginfig(12);
    label(btex $\bm b$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "gluon-white.svg";
beginfig(13);
    label(btex $\bm g$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "photon-white.svg";
beginfig(14);
    label(btex $\bm \gamma$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "zboson-white.svg";
beginfig(15);
    label(btex $\bm Z$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "wboson-white.svg";
beginfig(16);
    label(btex $\bm W$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "higgs-white.svg";
beginfig(17);
    label(btex $\bm H$ etex, origin) withcolor white;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

end;
