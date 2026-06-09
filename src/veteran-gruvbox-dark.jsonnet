local palette = {
  // Dark Colors
  "dark0_hard":     "#1d2021",
  "dark0":          "#282828",
  "dark0_soft":     "#32302f",
  "dark1":          "#3c3836",
  "dark2":          "#504945",
  "dark3":          "#665c54",
  "dark4":          "#7c6f64",

  // Gray Colors
  "gray_245":       "#928374",
  "gray_244":       "#928374",

  // Light Colors
  "light0_hard":    "#f9f5d7",
  "light0":         "#fbf1c7",
  "light0_soft":    "#f2e5bc",
  "light1":         "#ebdbb2",
  "light2":         "#d5c4a1",
  "light3":         "#bdae93",
  "light4":         "#a89984",

  // Bright Accent Colors
  "bright_red":     "#fb4934",
  "bright_green":   "#b8bb26",
  "bright_blue":    "#83a598",
  "bright_yellow":  "#fabd2f",
  "bright_purple":  "#d3869b",
  "bright_acqua":   "#8ec07c",
  "bright_orange":  "#fe8019",

  // Neutral Accent Colors
  "neutral_red":    "#cc241d",
  "neutral_green":  "#98971a",
  "neutral_blue":   "#458588",
  "neutral_yellow": "#d79921",
  "neutral_purple": "#b16286",
  "neutral_acqua":  "#689d6a",
  "neutral_orange": "#d65d0e",

  // Faded Accent Colors
  "faded_red":      "#9d0006",
  "faded_green":    "#79740e",
  "faded_blue":     "#076678",
  "faded_yellow":   "#b57614",
  "faded_purple":   "#8f3f71",
  "faded_acqua":    "#427b58",
  "faded_orange":   "#af3a03"
};

{
  "$schema": "vscode://schemas/color-theme",
  "name": "Oldman's Gruvbox Dark Theme",
  "author": "Vinicius Seixas",
  "semanticClass": "theme.dark",
  "semanticHighlighting": true,
  "type": "dark",
  "colors": {
    "activityBar.background": palette.dark0,
    "activityBar.border": palette.dark1,
    "activityBar.foreground": palette.light1,

    "activityBarBadge.background": palette.neutral_blue,
    "activityBarBadge.foreground": palette.light1,

    "badge.background": palette.bright_purple,
    "badge.foreground": palette.dark0,

    "button.background": palette.neutral_blue + "80",
    "button.foreground": palette.light1,
    "button.hoverBackground": palette.neutral_blue + "60",

    "debugToolBar.background": palette.dark0,

    "diffEditor.insertedTextBackground": palette.bright_green + "30",
    "diffEditor.removedTextBackground": palette.bright_red + "30",

    "dropdown.background": palette.dark0,
    "dropdown.border": palette.dark1,
    "dropdown.foreground": palette.light1,

    "editor.background": palette.dark0,
    "editor.findMatchBackground": palette.neutral_blue + "70",
    "editor.findMatchHighlightBackground": palette.bright_orange + "30",
    "editor.findRangeHighlightBackground": palette.neutral_blue + "70",
    "editor.foreground": palette.light1,
    "editor.hoverHighlightBackground": palette.neutral_acqua + "50",
    "editor.lineHighlightBackground": palette.dark1 + "60",
    "editor.lineHighlightBorder": palette.dark1 + "00",
    "editor.selectionBackground": palette.neutral_acqua + "40",
    "editor.selectionHighlightBackground": palette.bright_yellow + "40",
    "editorBracketHighlight.foreground1": palette.neutral_purple,
    "editorBracketHighlight.foreground2": palette.neutral_blue,
    "editorBracketHighlight.foreground3": palette.neutral_acqua,
    "editorBracketHighlight.foreground4": palette.neutral_green,
    "editorBracketHighlight.foreground5": palette.neutral_yellow,
    "editorBracketHighlight.foreground6": palette.neutral_orange,
    "editorBracketHighlight.unexpectedBracket.foreground": palette.neutral_red,
    "editorBracketMatch.background": palette.gray_244 + "80",
    "editorBracketMatch.border": palette.dark0 + "00",
    "editorCodeLens.foreground": palette.light4 + "90",
    "editorCursor.foreground": palette.light1,
    "editorError.foreground": palette.neutral_red,
    "editorGroup.border": palette.dark1,
    "editorGroup.dropBackground": palette.dark1 + "60",
    "editorGroupHeader.noTabsBackground": palette.dark1,
    "editorGroupHeader.tabsBackground": palette.dark0,
    "editorGroupHeader.tabsBorder": palette.dark1,
    "editorGutter.addedBackground": palette.bright_green,
    "editorGutter.background": palette.dark0 + "00",
    "editorGutter.deletedBackground": palette.bright_red,
    "editorGutter.modifiedBackground": palette.bright_blue,
    "editorHoverWidget.background": palette.dark0_soft,
    "editorHoverWidget.border": palette.faded_green,
    "editorIndentGuide.activeBackground1": palette.light4 + "50",
    "editorIndentGuide.background1": palette.light4 + "20",
    "editorInfo.foreground": palette.neutral_blue,
    "editorLineNumber.foreground": palette.dark3,
    "editorLink.activeForeground": palette.light1,
    "editorOverviewRuler.addedForeground": palette.bright_blue,
    "editorOverviewRuler.border": palette.dark0 + "00",
    "editorOverviewRuler.commonContentForeground": palette.gray_245,
    "editorOverviewRuler.currentContentForeground": palette.neutral_blue,
    "editorOverviewRuler.deletedForeground": palette.bright_blue,
    "editorOverviewRuler.errorForeground": palette.bright_red,
    "editorOverviewRuler.findMatchForeground": palette.light3 + "bf",
    "editorOverviewRuler.incomingContentForeground": palette.neutral_acqua,
    "editorOverviewRuler.infoForeground": palette.bright_purple,
    "editorOverviewRuler.modifiedForeground": palette.bright_blue,
    "editorOverviewRuler.rangeHighlightForeground": palette.light3 + "bf",
    "editorOverviewRuler.selectionHighlightForeground": palette.dark3 + "bf",
    "editorOverviewRuler.warningForeground": palette.neutral_yellow,
    "editorOverviewRuler.wordHighlightForeground": palette.dark3 + "bf",
    "editorOverviewRuler.wordHighlightStrongForeground": palette.dark3 + "bf",
    "editorRuler.foreground": palette.light4 + "40",
    "editorSuggestWidget.background": palette.dark0,
    "editorSuggestWidget.border": palette.dark1,
    "editorSuggestWidget.foreground": palette.light1,
    "editorSuggestWidget.highlightForeground": palette.neutral_acqua,
    "editorSuggestWidget.selectedBackground": palette.dark1 + "60",
    "editorWarning.foreground": palette.neutral_yellow,
    "editorWhitespace.foreground": palette.light4 + "20",
    "editorWidget.background": palette.dark1,
    "editorWidget.border": palette.faded_green,

    "errorForeground": palette.bright_red,

    "extensionButton.prominentBackground": palette.bright_green + "80",
    "extensionButton.prominentHoverBackground": palette.bright_green + "30",

    "focusBorder": palette.dark1,
    "foreground": palette.light1,

    "gitDecoration.addedResourceForeground": palette.light1,
    "gitDecoration.conflictingResourceForeground": palette.faded_red,
    "gitDecoration.deletedResourceForeground": palette.neutral_red,
    "gitDecoration.ignoredResourceForeground": palette.light4,
    "gitDecoration.modifiedResourceForeground": palette.neutral_green,
    "gitDecoration.renamedResourceForeground": palette.light1,
    "gitDecoration.stageDeletedResourceForeground": palette.light4,
    "gitDecoration.stageModifiedResourceForeground": palette.light1,
    "gitDecoration.submoduleResourceForeground": palette.light1,
    "gitDecoration.untrackedResourceForeground": palette.faded_green,

    "input.background": palette.light1 + "05",
    "input.border": palette.dark1,
    "input.foreground": palette.light1,
    "input.placeholderForeground": palette.light1 + "60",
    "inputOption.activeBorder": palette.light1 + "60",
    "inputValidation.errorBackground": palette.neutral_red + "80",
    "inputValidation.errorBorder": palette.bright_red,
    "inputValidation.infoBackground": palette.neutral_blue + "80",
    "inputValidation.infoBorder": palette.bright_blue,
    "inputValidation.warningBackground": palette.neutral_yellow + "80",
    "inputValidation.warningBorder": palette.bright_yellow,

    "list.activeSelectionBackground": palette.dark0,
    "list.activeSelectionForeground": palette.bright_green,
    "list.dropBackground": palette.dark1,
    "list.errorForeground": palette.neutral_red,
    "list.focusBackground": palette.dark1,
    "list.focusForeground": palette.light1,
    "list.highlightForeground": palette.neutral_acqua,
    "list.hoverBackground": palette.dark1,
    "list.hoverForeground": palette.light2,
    "list.inactiveSelectionBackground": palette.dark0_soft,
    "list.inactiveSelectionForeground": palette.neutral_acqua,

    "menu.border": palette.dark1,

    "merge.border": palette.dark0 + "00",
    "merge.currentContentBackground": palette.neutral_blue + "20",
    "merge.currentHeaderBackground": palette.neutral_blue + "40",
    "merge.incomingContentBackground": palette.neutral_acqua + "20",
    "merge.incomingHeaderBackground": palette.neutral_acqua + "40",

    "notebook.cellBorderColor": palette.dark2,
    "notebook.cellEditorBackground": palette.dark0_soft,
    "notebook.focusedCellBorder": palette.light4,
    "notebook.focusedEditorBorder": palette.dark2,

    "panel.background": palette.dark0_soft,
    "panel.border": palette.dark3,
    "panelTitle.activeBorder": palette.neutral_acqua,
    "panelTitle.activeForeground": palette.light1,

    "peekView.border": palette.dark1,
    "peekViewEditor.background": palette.dark1,
    "peekViewEditor.matchHighlightBackground": palette.neutral_green,
    "peekViewEditor.matchHighlightBorder": palette.neutral_green + "30",
    "peekViewEditorGutter.background": palette.dark1,
    "peekViewEditorStickyScroll.background": palette.dark0_soft,
    "peekViewResult.background": palette.dark1,
    "peekViewResult.fileForeground": palette.light1,
    "peekViewResult.matchHighlightBackground": palette.bright_acqua + "30",
    "peekViewResult.selectionBackground": palette.bright_acqua + "30",
    "peekViewResult.selectionForeground": palette.bright_acqua + "30",
    "peekViewTitle.background": palette.dark0_hard,
    "peekViewTitleDescription.foreground": palette.light3,
    "peekViewTitleLabel.foreground": palette.light1,

    "progressBar.background": palette.neutral_acqua,

    "scrollbar.shadow": palette.dark0,
    "scrollbarSlider.activeBackground": palette.neutral_acqua,
    "scrollbarSlider.background": palette.dark2 + "99",
    "scrollbarSlider.hoverBackground": palette.dark3,

    "selection.background": palette.neutral_acqua + "80",

    "sideBar.background": palette.dark1,
    "sideBar.border": palette.dark3,
    "sideBar.foreground": palette.light2,
    "sideBarSectionHeader.background": palette.dark0_soft,
    "sideBarSectionHeader.foreground": palette.light1,
    "sideBarTitle.background": palette.dark0,
    "sideBarTitle.foreground": palette.light1,

    "statusBar.background": palette.dark0,
    "statusBar.border": palette.dark1,
    "statusBar.debuggingBackground": palette.bright_orange,
    "statusBar.debuggingBorder": palette.dark0 + "00",
    "statusBar.debuggingForeground": palette.dark0,
    "statusBar.foreground": palette.light1,
    "statusBar.noFolderBackground": palette.dark0,
    "statusBar.noFolderBorder": palette.dark0 + "00",

    "tab.activeBackground": palette.dark1,
    //"tab.activeBorder": palette.neutral_acqua,
    "tab.activeBorderTop": palette.neutral_acqua,
    "tab.activeForeground": palette.light1,
    "tab.activeModifiedBorder": palette.bright_yellow,
    "tab.border": palette.dark0_hard,
    "tab.inactiveBackground": palette.dark0_hard,
    "tab.inactiveForeground": palette.light4,
    "tab.inactiveModifiedBorder": palette.neutral_yellow,
    "tab.unfocusedActiveBorder": palette.dark0 + "00",
    "tab.unfocusedActiveForeground": palette.light4,
    "tab.unfocusedInactiveForeground": palette.gray_245,

    "terminal.ansiBlack": palette.dark1,
    "terminal.ansiBlue": palette.neutral_blue,
    "terminal.ansiBrightBlack": palette.gray_245,
    "terminal.ansiBrightBlue": palette.bright_blue,
    "terminal.ansiBrightCyan": palette.bright_acqua,
    "terminal.ansiBrightGreen": palette.bright_green,
    "terminal.ansiBrightMagenta": palette.bright_purple,
    "terminal.ansiBrightRed": palette.bright_red,
    "terminal.ansiBrightWhite": palette.light1,
    "terminal.ansiBrightYellow": palette.bright_yellow,
    "terminal.ansiCyan": palette.neutral_acqua,
    "terminal.ansiGreen": palette.neutral_green,
    "terminal.ansiMagenta": palette.neutral_purple,
    "terminal.ansiRed": palette.neutral_red,
    "terminal.ansiWhite": palette.light4,
    "terminal.ansiYellow": palette.neutral_yellow,
    "terminal.background": palette.dark0_hard,
    "terminal.foreground": palette.light1,

    "textLink.activeForeground": palette.neutral_blue,
    "textLink.foreground": palette.bright_blue,

    "titleBar.activeBackground": palette.dark0,
    "titleBar.activeForeground": palette.light1,
    "titleBar.inactiveBackground": palette.dark0,

    "widget.shadow": palette.bright_yellow + "30"
  },
  "tokenColors": [
    // {
    //   "scope": "emphasis",
    //   "settings": {
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "strong",
    //   "settings": {
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "header",
    //   "settings": {
    //     "foreground": palette.neutral_blue
    //   }
    // },
    // {
    //   "scope": ["comment", "punctuation.definition.comment"],
    //   "settings": {
    //     "foreground": palette.gray_245,
    //     "fontStyle": ""
    //   }
    // },
    // {
    //   "scope": ["constant", "support.constant", "variable.arguments"],
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": "constant.rgb-value",
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": "entity.name.selector",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "entity.other.attribute-name",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": ["entity.name.tag", "punctuation.tag"],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": ["invalid", "invalid.illegal"],
    //   "settings": {
    //     "foreground": palette.neutral_red
    //   }
    // },
    // {
    //   "scope": "invalid.deprecated",
    //   "settings": {
    //     "foreground": palette.neutral_purple
    //   }
    // },
    // {
    //   "scope": "meta.selector",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "meta.preprocessor",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "meta.preprocessor.string",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "meta.preprocessor.numeric",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "meta.header.diff",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "storage",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": "storage.modifier",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "string.tag",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "string.value",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "string.regexp",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "string.escape",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": "string.quasi",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "string.entity",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "object",
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": "module.node",
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": "support.type.property-name",
    //   "settings": {
    //     "foreground": palette.neutral_acqua
    //   }
    // },
    // {
    //   "scope": "keyword",
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": "keyword.control.module",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "keyword.control.less",
    //   "settings": {
    //     "foreground": palette.neutral_yellow
    //   }
    // },
    // {
    //   "scope": "keyword.operator.new",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "keyword.other.unit",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "metatag.php",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "support.function.git-rebase",
    //   "settings": {
    //     "foreground": palette.neutral_acqua
    //   }
    // },
    // {
    //   "scope": "constant.sha.git-rebase",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": [
    //     "meta.type.name",
    //     "meta.return.type",
    //     "meta.return-type",
    //     "meta.cast",
    //     "meta.type.annotation",
    //     "support.type",
    //     "storage.type.cs",
    //     "variable.class"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": ["variable.this", "support.variable"],
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": [
    //     "entity.name",
    //     "entity.static",
    //     "entity.name.class.static.function",
    //     "entity.name.function",
    //     "entity.name.class",
    //     "entity.name.type"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": [
    //     "storage.type.function",
    //     "entity.function",
    //     "entity.name.function.static"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "entity.name.function.function-call",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "support.function.builtin",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": [
    //     "entity.name.method",
    //     "entity.name.method.function-call",
    //     "entity.name.static.function-call"
    //   ],
    //   "settings": {
    //     "foreground": palette.neutral_acqua
    //   }
    // },
    // {
    //   "scope": "brace",
    //   "settings": {
    //     "foreground": palette.light2
    //   }
    // },
    // {
    //   "scope": [
    //     "meta.parameter.type.variable",
    //     "variable.parameter",
    //     "variable.name",
    //     "variable.other",
    //     "variable",
    //     "string.constant.other.placeholder"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": "prototype",
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": "storage.type.class",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": ["punctuation"],
    //   "settings": {
    //     "foreground": palette.light4
    //   }
    // },
    // {
    //   "scope": "punctuation.quoted",
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": "punctuation.quasi",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": ["*url*", "*link*", "*uri*"],
    //   "settings": {
    //     "fontStyle": "underline"
    //   }
    // },
    // {
    //   "scope": ["meta.function.python", "entity.name.function.python"],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": [
    //     "storage.type.function.python",
    //     "storage.modifier.declaration",
    //     "storage.type.class.python"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": "entity.name.function.decorator",
    //   "settings": {
    //     "foreground": palette.bright_yellow,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "constant.other.caps",
    //   "settings": {
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "keyword.operator.logical",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": "punctuation.definition.logical-expression",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "string.inperpolated.dollar.shell",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": [
    //     "string.interpolated.dollar.shell",
    //     "string.interpolated.backtick.shell"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "keyword.control.directive",
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "support.function.C99",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": [
    //     "meta.function.cs",
    //     "entity.name.function.cs",
    //     "entity.name.type.namespace.cs"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": [
    //     "keyword.other.using.cs",
    //     "entity.name.variable.field.cs",
    //     "entity.name.variable.local.cs",
    //     "variable.other.readwrite.cs"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": ["keyword.other.this.cs", "keyword.other.base.cs"],
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": "meta.scope.prerequisites",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": "entity.name.function.target",
    //   "settings": {
    //     "foreground": palette.bright_green,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": [
    //     "storage.modifier.import.java",
    //     "storage.modifier.package.java"
    //   ],
    //   "settings": {
    //     "foreground": palette.light3
    //   }
    // },
    // {
    //   "scope": "storage.type.java",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": "storage.type.annotation",
    //   "settings": {
    //     "foreground": palette.bright_blue,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "comment.block.javadoc variable.parameter.java",
    //   "settings": {
    //     "foreground": palette.bright_green,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": [
    //     "source.java variable.other.object",
    //     "source.java variable.other.definition.java"
    //   ],
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": "meta.function-parameters.lisp",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": "markup.underline",
    //   "settings": {
    //     "fontStyle": "underline"
    //   }
    // },
    // {
    //   "scope": "string.other.link.title.markdown",
    //   "settings": {
    //     "foreground": palette.gray_245,
    //     "fontStyle": "underline"
    //   }
    // },
    // {
    //   "scope": "markup.underline.link",
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": "markup.bold",
    //   "settings": {
    //     "foreground": palette.bright_orange,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "markup.heading",
    //   "settings": {
    //     "foreground": palette.bright_orange,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": "markup.italic",
    //   "settings": {
    //     "fontStyle": "italic"
    //   }
    // },
    // {
    //   "scope": "markup.inserted",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "markup.deleted",
    //   "settings": {
    //     "foreground": palette.neutral_orange
    //   }
    // },
    // {
    //   "scope": "markup.changed",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "markup.punctuation.quote.beginning",
    //   "settings": {
    //     "foreground": palette.neutral_green
    //   }
    // },
    // {
    //   "scope": "markup.punctuation.list.beginning",
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": ["markup.inline.raw", "markup.fenced_code.block"],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": "string.quoted.double.json",
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": [
    //     "source.json meta.structure.dictionary.json support.type.property-name.json"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": [
    //     "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": [
    //     "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": [
    //     "source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": "entity.other.attribute-name.css",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "source.css meta.selector",
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": "support.type.property-name.css",
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "entity.other.attribute-name.class",
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": [
    //     "source.css support.function.transform",
    //     "source.css support.function.timing-function",
    //     "source.css support.function.misc"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": [
    //     "support.property-value",
    //     "constant.rgb-value",
    //     "support.property-value.scss",
    //     "constant.rgb-value.scss"
    //   ],
    //   "settings": {
    //     "foreground": palette.neutral_orange
    //   }
    // },
    // {
    //   "scope": ["entity.name.tag.css"],
    //   "settings": {
    //     "fontStyle": ""
    //   }
    // },
    // {
    //   "scope": ["punctuation.definition.tag"],
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": ["text.html entity.name.tag", "text.html punctuation.tag"],
    //   "settings": {
    //     "foreground": palette.bright_acqua,
    //     "fontStyle": "bold"
    //   }
    // },
    // {
    //   "scope": ["source.js variable.language"],
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": ["source.ts variable.language"],
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": ["source.go storage.type"],
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": ["source.go entity.name.import"],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": ["source.go keyword.package", "source.go keyword.import"],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": ["source.go keyword.interface", "source.go keyword.struct"],
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": ["source.go entity.name.type"],
    //   "settings": {
    //     "foreground": palette.light1
    //   }
    // },
    // {
    //   "scope": ["source.go entity.name.function"],
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },
    // {
    //   "scope": ["keyword.control.cucumber.table"],
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": ["source.reason string.double", "source.reason string.regexp"],
    //   "settings": {
    //     "foreground": palette.bright_green
    //   }
    // },
    // {
    //   "scope": ["source.reason keyword.control.less"],
    //   "settings": {
    //     "foreground": palette.bright_acqua
    //   }
    // },
    // {
    //   "scope": ["source.reason entity.name.function"],
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": [
    //     "source.reason support.property-value",
    //     "source.reason entity.name.filename"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": ["source.powershell variable.other.member.powershell"],
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": ["source.powershell support.function.powershell"],
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": ["source.powershell support.function.attribute.powershell"],
    //   "settings": {
    //     "foreground": palette.light3
    //   }
    // },
    // {
    //   "scope": [
    //     "source.powershell meta.hashtable.assignment.powershell variable.other.readwrite.powershell"
    //   ],
    //   "settings": {
    //     "foreground": palette.bright_orange
    //   }
    // },
    // {
    //   "scope": "ref.matchtext",
    //   "settings": {
    //     "foreground": palette.light0_hard
    //   }
    // },
    // {
    //   "scope": "token.info-token",
    //   "settings": {
    //     "foreground": palette.bright_blue
    //   }
    // },
    // {
    //   "scope": "token.warn-token",
    //   "settings": {
    //     "foreground": palette.bright_yellow
    //   }
    // },
    // {
    //   "scope": "token.error-token",
    //   "settings": {
    //     "foreground": palette.bright_red
    //   }
    // },
    // {
    //   "scope": "token.debug-token",
    //   "settings": {
    //     "foreground": palette.bright_purple
    //   }
    // },

    // ---------------------------------
    // Everything above must be reviewed
    // ---------------------------------
    {
      "scope": "string.quoted",
      "settings": {
        "foreground": palette.neutral_yellow,
      }
    },
    {
      "scope": "keyword.operator",
      "settings": {
        "foreground": palette.bright_acqua
      }
    },
    // {
    //   "scope": "keyword.control",
    //   "settings": {
    //     "foreground": palette.bright_blue,
    //     "fontStyle": "bold",
    //   }
    // },
    {
      "scope": [
        "keyword.other.import",
        "keyword.other.package",
        "keyword.control.import",
      ],
      "settings": {
        "foreground": palette.neutral_acqua,
        "fontStyle": "bold",
      }
    },
    {
      "scope": [
        "meta.member.access",
      ],
      "settings": {
        "foreground": palette.bright_blue,
        "fontStyle": "bold",
      }
    },
    {
      "scope": [
        "meta.function-call.generic",
      ],
      "settings": {
        "foreground": palette.bright_blue,
        "fontStyle": "bold",
      }
    },
    {
      "scope": [
        "meta.function-call.arguments",
      ],
      "settings": {
        "foreground": palette.bright_blue,
        "fontStyle": "",
      }
    },
    {
      "scope": [
        "comment",
        "punctuation.definition.comment",
      ],
      "settings": {
        "foreground": palette.dark4,
        "fontStyle": ""
      }
    },

    // Languages generic
    {
      "scope": [
        "storage.modifier.import",
        "storage.modifier.package"
      ],
      "settings": {
        "foreground": palette.faded_acqua,
        "fontStyle": ""
      }
    },


    // SQL
    {
      "scope": [
        "source.sql",
      ],
      "settings": {
        "foreground": palette.bright_acqua,
        "fontStyle": ""
      }
    },
    {
      "scope": [
        "source.sql keyword.other",
      ],
      "settings": {
        "foreground": palette.bright_orange,
        "fontStyle": ""
      }
    },
    {
      "scope": [
        "source.sql support.function",
      ],
      "settings": {
        "foreground": palette.bright_green,
        "fontStyle": ""
      }
    },

    // YAML and Maps
    {
      "scope": [
        "meta.map.key entity.name", // Top-level keys
      ],
      "settings": {
        "foreground": palette.bright_green,
        "fontStyle": "bold"
      }
    },
    {
      "scope": [
        "source.yaml",
        "meta.map.value entity.name", // Sub keys
      ],
      "settings": {
        "foreground": palette.bright_green,
        "fontStyle": ""
      }
    },
    {
      "scope": [
        "meta.map.value constant", // Non-string values
      ],
      "settings": {
        "foreground": palette.bright_blue,
        "fontStyle": ""
      }
    },
  ],

  // ---
  // Prefer semantic tokens over textmate scopes
  "semanticTokenColors": {
    "modifier": {
      "foreground": palette.neutral_orange,
      "bold": false,
    },
    "namespace": { // module
      "foreground": palette.faded_acqua,
      "bold": false,
    },
    "annotation": {
      "foreground": palette.neutral_purple,
      "bold": false,
    },
    "annotationMember": {
      "foreground": palette.neutral_blue,
      "bold": false,
    },
    "function": {
      "foreground": palette.bright_green,
      "bold": false,
    },
    "function.declaration": {
      "bold": true,
    },
    // Methods are bad defined in semantic tokens, using textmate scopes
    // "method": {
    // },
    "parameter": {
      "foreground": palette.bright_blue,
      "bold": false,
    },
    "parameter.declaration": {
      "bold": true,
    },
    // "parameter.documentation": {
    //   "bold": false,
    // },
    "property": {
      "foreground": palette.neutral_green,
      "bold": true,
    },
    "variable": {
      "foreground": palette.bright_blue,
      "bold": false,
    },
    "variable.declaration": {
      "bold": true,
    },
    "interface": {
      "foreground": palette.bright_acqua,
      "bold": true,
    },
    "interface.generic": {
      "bold": false,
    },
    "interface.public": {
      "bold": true,
    },
    "interface.typeArgument": {
      "foreground": palette.neutral_blue,
      "bold": false,
    },
    "interface.public.importDeclaration": {
      "bold": false,
    },
    "class": {
      "foreground": palette.bright_acqua,
    },
    "class.public": {
      "bold": true,
    },
    "class.public.importDeclaration": {
      "bold": false,
    },
    "class.typeArgument": {
      "foreground": palette.neutral_blue,
      "bold": true,
    },
    "enum": {
      "foreground": palette.bright_acqua,
    },
    "enum.public": {
      "bold": true,
    },
    "enum.public.importDeclaration": {
      "bold": false,
    },
    "enum.typeArgument": {
      "foreground": palette.neutral_blue,
      "bold": true,
    },

    //
    "keyword.documentation": {
      "foreground": palette.neutral_acqua,
      "bold": false,
    },

  }
}
