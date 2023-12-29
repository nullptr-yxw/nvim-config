local myvsccolors = {}

myvsccolors.lightness = function(str, rate)
    return (tonumber(str) * rate)
end

myvsccolors.get_colors = function()
    return {
        None = "NONE",
        Front = "#D4D4D4",
        Back = "#1E1E1E",

        TabCurrent = "#1E1E1E",
        TabOther = "#1E1E1E",
        TabOutside = "#1E1E1E",

        LeftDark = "#252526",
        LeftMid = "#373737",
        LeftLight = "#636369",

        PopupFront = "#BBBBBB",
        PopupBack = "#272727",
        PopupHighlightBlue = "#004b72",
        PopupHighlightGray = "#343B41",

        SplitLight = "#898989",
        SplitDark = "#444444",
        SplitThumb = "#424242",

        CursorDarkDark = "#222222",
        CursorDark = "#51504F",
        CursorLight = "#AEAFAD",
        Selection = "#264F78",
        LineNumber = "#5A5A5A",

        DiffRedDark = "#4B1818",
        DiffRedLight = "#6F1313",
        DiffRedLightLight = "#FB0101",
        DiffGreenDark = "#373D29",
        DiffGreenLight = "#4B5632",
        SearchCurrent = "#515c6a",
        Search = "#613315",

        GkitAdded = "#81b88b",
        GitModified = "#e2c08d",
        GitDeleted = "#c74e39",
        GitRenamed = "#73c991",
        GitUntracked = "#73c991",
        GitIgnored = "#8c8c8c",
        GitStageModified = "#e2c08d",
        GitStageDeleted = "#c74e39",
        GitConflicting = "#e4676b",
        GitSubmodule = "#8db9e2",

        Context = "#404040",
        ContextCurrent = "#707070",

        FoldBackground = "#202d39",

        Gray = "#808080",
        LightGray = "#a9a9a9",
        Violet = "#646695",
        Blue = "#569CD6",
        AccentBlue = "#4FC1FE",
        DarkBlue = "#223E55",
        MediumBlue = "#18a2fe",
        LightBlue = "#9CDCFE",
        Green = "#6A9955",
        BlueGreen = "#4EC9B0",
        LightGreen = "#B5CEA8",
        Red = "#F44747",
        Orange = "#CE9178",
        LightRed = "#D16969",
        YellowOrange = "#D7BA7D",
        Yellow = "#DCDCAA",
        GreyYellow = "B0B088",
        DarkYellow = "#FFD602",
        Pink = "#C586C0",

        UiBlue = "#084671",
        UiOrange = "#f28b25",
        PopupHighlightLightBlue = "#d7eafe",

        DarkSalmon = "#E9967A",
        DoderBlue = "#1E90FF",
        MediumTurquoise = "#48D1CC",
        MintCream = "#F5FFFA",
        Turquoise = "#40E0D0",
        LawnGreen = "#7CFC00",
    }
end

return myvsccolors
