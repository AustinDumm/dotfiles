local P = {}

function P.init()
    red.styling.keyword(nil, red.rgb(240, 10, 10))
    red.styling.comment(nil, red.rgb(70, 193, 205))
    red.styling.string(nil, red.rgb(133, 255, 158))
    red.styling.symbol(nil, red.rgb(255, 253, 208))
    red.styling.dot_indexed(nil, red.rgb(180, 121, 143));
    red.styling.default(nil, red.rgb(175, 144, 169));
    red.styling.type(nil, red.rgb(168, 198, 134));
end

return P
