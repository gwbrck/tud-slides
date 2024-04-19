local andreplacement = "and"  -- Default conjunction replacement

-- Function to get custom language separator from metadata, e.g., 'und' for German
local function get_and(meta)
    local lang_code = meta.lang

    if type(lang_code) == 'table' then
      lang_code = lang_code[1].text
    end

    if lang_code == 'de' then
        andreplacement = "und"
    end

    return meta
end

-- Function to modify citations
local function replace_and(ct)
    -- Only modify author-in-text citations
    if ct.citations[1].mode == "AuthorInText" then
        -- Replace ampersand (&) with the appropriate conjunction
        ct.content = ct.content:walk {
            Str = function(elem)
                if elem.text == "&" then
                  elem.text = andreplacement
                end
                return elem
            end
        }
        return ct.content
    end
end

-- Return the filters
return {
    { Meta = get_and },
    { Cite = replace_and }
}
