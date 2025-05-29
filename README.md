# SN Pro Font Family

SN Pro is a friendly sans serif typeface optimized for use with Markdown. It is based on Nunito by Vernon Adams, and each character has been re-worked to improve readability and usability within a Markdown context. Originally designed by and for Supernotes.

[Visit the official website](https://supernotes.app/open-source/sn-pro/) for the download link, information about the design process and our sponsors.

![snProChangelog](https://github.com/supernotes/sn-pro/assets/16340510/a6315ad0-65ea-43eb-9268-16ef6f512f8c)

## Formats

### Static

SN Pro is available in `.otf`, `.ttf`, `.woff` and `.woff2` formats, with nine weights ranging from Thin to Black. [Please download the .zip from the official download page](https://supernotes.app/open-source/sn-pro/). The included weights are:

| Weight Name | Value |
| ----------- | ----- |
| Thin        | 200   |
| Light       | 300   |
| Book        | 350   |
| Regular     | 400   |
| Medium      | 500   |
| Semi Bold   | 600   |
| Bold        | 700   |
| Heavy       | 800   |
| Black       | 900   |

### Variable

Three variable variants are available in `.woff`, `.woff2` and `.ttf` formats:

- 'SNPro-Variable' - all weights, including both italic and regular styles
- 'SNPro-VariableRegular' - all weights fixed in regular style
- 'SNPro-VariableItalic' - all weights fixed in italicized style

If you'd like to include them in css please follow the following guidelines. This allows support for all weights and italics in almost all major browsers:

```css
@font-face {
  font-family: "SN Pro";
  src: url(${SNProWOFF2Regular}) format("woff2-variations");
  font-weight: 200 900;
  font-style: normal;
}
@font-face {
  font-family: "SN Pro";
  src: url(${SNProWOFF2Italic}) format("woff2-variations");
  font-weight: 200 900;
  font-style: italic;
}
```

**Note:** Using the combined `SNPro-Variable` variable font is no longer recommended on the web due to [incompatibilities with italics across browsers](https://arrowtype.github.io/vf-slnt-test/) (mainly WebKit / Safari as of 17th September 2024).

## Ligatures

Currently the following ligatures are supported:

```js
->    →
-->   ⟶
<-    ←
<--   ⟵
<=    ≥
>=    ≤
=>    ⇒
==>   ⟹
<==   ⟸
<->   ↔
<-->  ⟷
<=>   ⇔
<==>  ⟺
!=    ≠
✓✓    ✓✓
```

Please make sure ligatures are active within your editor / css. Circled numbers [are not currently present in the ligature spec](https://github.com/supernotes/sn-pro/issues/5#issuecomment-1967209090).

## Stylistic Sets

### Markdown Marks (ss01)

While the typeface as a whole has been designed with Markdown in mind, enabling this stylistic set specifically modifies asterisks and graves to be larger and bolder while editing Markdown.

## Credits & Links

SN Pro is designed by [Tobias Whetton](https://tobias.so/) at [Supernotes](https://supernotes.app). Based on [Nunito](https://github.com/googlefonts/nunito) by Vernon Adams.
