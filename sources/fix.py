import glob
from fontTools.ttLib import TTFont
from fontbakery.constants import (
    MacStyle,
    FsSelection,
)

if __name__ == "__main__":

    for font_path in glob.glob("../fonts/variable/*Italic*.ttf"):
        with open(font_path, "rb") as f:
            print("Fix italic naming in {}".format(font_path))
            ttFont = TTFont(f)
            ttFont["head"].macStyle = MacStyle.ITALIC
            ttFont["OS/2"].fsSelection = FsSelection.USETYPOMETRICS | FsSelection.ITALIC
            ttFont["post"].italicAngle = -9
            ttFont["hhea"].caretSlopeRise = 1000
            ttFont["hhea"].caretSlopeRun = 158
            ttFont.save(font_path)
