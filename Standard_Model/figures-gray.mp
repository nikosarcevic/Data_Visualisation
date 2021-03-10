prologues       := 3;
outputformat    := "svg";

defaultfont:= "phvr8r";

color grayish;
grayish := 1/256(102, 102, 102);
verbatimtex
    \documentclass{article}
    \usepackage{sansmathfonts}
    \usepackage{bm}
    \begin{document}
etex

outputtemplate  := "electron-gray.svg";
beginfig(1);
    label(btex $\bm e$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "muon-gray.svg";
beginfig(2);
    label(btex $\bm \mu$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;
outputtemplate  := "tauon-gray.svg";
beginfig(3);
    label(btex $\bm \tau$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "eneutrino-gray.svg";
beginfig(4);
    label(btex $\bm \nu_e$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "muneutrino-gray.svg";
beginfig(5);
    label(btex $\bm \nu_\mu$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "tauneutrino-gray.svg";
beginfig(6);
    label(btex $\bm \nu_\tau$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "upquark-gray.svg";
beginfig(7);
    label(btex $\bm u$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "downquark-gray.svg";
beginfig(8);
    label(btex $\bm d$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "charmquark-gray.svg";
beginfig(9);
    label(btex $\bm c$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "strangequark-gray.svg";
beginfig(10);
    label(btex $\bm s$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "topquark-gray.svg";
beginfig(11);
    label(btex $\bm t$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "bottomquark-gray.svg";
beginfig(12);
    label(btex $\bm b$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "gluon-gray.svg";
beginfig(13);
    label(btex $\bm g$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "photon-gray.svg";
beginfig(14);
    label(btex $\bm \gamma$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "zboson-gray.svg";
beginfig(15);
    label(btex $\bm Z$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "wboson-gray.svg";
beginfig(16);
    label(btex $\bm W$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

outputtemplate  := "higgs-gray.svg";
beginfig(17);
    label(btex $\bm H$ etex, origin) withcolor grayish;
    setbounds currentpicture to (unitsquare shifted(-1/2,-1/2) scaled 0.5cm);
endfig;

end;
