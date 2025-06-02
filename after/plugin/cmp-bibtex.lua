local ok_cmp, cmp = pcall(require, "cmp")
local ok_bib, cmp_bibtex = pcall(require, "cmp-bibtex")
if ok_cmp and ok_bib and cmp_bibtex and cmp_bibtex.new then
  cmp.register_source("bibtex", cmp_bibtex.new())
end
