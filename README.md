# SN Pro Font Family

SN Pro is a friendly sans serif typeface optimized for use with Markdown. It is based on Nunito by Vernon Adams, and each character has been re-worked to improve readability and usability within a Markdown context. Originally designed by and for Supernotes.

[Visit the official website](https://supernotes.app/open-source/sn-pro/) for the download link, information about the design process and our sponsors.

![snProChangelog](https://github.com/supernotes/sn-pro/assets/16340510/a6315ad0-65ea-43eb-9268-16ef6f512f8c)

## Formats
### Static 
SN Pro is available in `.otf`, `.woff` and `.woff2` formats, with weights ranging from Thin to Black. [Please download the .zip from the official download page](https://supernotes.app/open-source/sn-pro/). 

### Variable 
As of SN Pro 1.1, three variable variants are available in `.woff` and `.woff2` formats:

- 'SNPro-Variable' - all weights, including both italic and regular styles
- 'SNPro-VariableRegular' - all weights fixed in regular style
- 'SNPro-VariableItalic' - all weights fixed in italicized style

If you'd like to include them in css please follow the following guidelines. This allows support for all weights and italics in almost all major browsers:

```css
@font-face {
  font-family: 'SN Pro';
  src: url(SNProVF_LINK) format('woff2-variations');
  font-weight: 200 900;
  font-style: oblique 0deg 14deg;
}
```

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
```

Please make sure ligatures are active within your editor / css. Circled numbers [are not currently present in the ligature spec](https://github.com/supernotes/sn-pro/issues/5#issuecomment-1967209090).

## Stylistic Sets
### Markdown Marks (ss01)
While the typeface as a whole has been designed with Markdown in mind, enabling this stylistic set specifically modifies asterisks and graves to be larger and bolder while editing Markdown.

## Credits & Links
SN Pro (1.1). Designed by Tobias Whetton at [Supernotes](https://supernotes.app). Based on [Nunito](https://github.com/googlefonts/nunito) by Vernon Adams. 
