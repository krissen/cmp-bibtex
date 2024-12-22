# cmp-bibtex

Bibtex completion source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp). Currently supports `\addbibresource{}`, or manually specified file names.

Fork of [liamvdvyver/cmp-bibtex](https://github.com/liamvdvyver/cmp-bibtex). This fork

- adds support for additional citations commands, such as `\parencite`, `\parencites`, `\textcite`, `\footcite` etc.;
- adds support for page references, e.g. `\cite[3]{key}` and `\cite[cf.][3]{key}`;
- adds additional information to the preview window;
- formats preview according to APA;
- handle more special characters (umlauts etc) and some commands that might be found in titles and author names.

A [PR](https://github.com/liamvdvyver/cmp-bibtex/pull/1) has been submitted to the original repository. Until it is merged, this fork can be used.

## Setup

Install (e.g. with [lazy.nvim](https://github.com/folke/lazy.nvim)), and register `"bibtex"` as a completion source:

```lua
require("cmp").setup({
  sources = { name = "bibtex" }
})
```

## Configuration

Call `require("cmp-bibtex").setup(opts)`, where opts is a table, supporting the following options:

- `files`: A list of `.bib` files which will always be parsed for suggestions.
- `filetypes`: A list of filetypes for which the source will be loaded (default `{ "markdown", "tex" }`)

For example, to enable the source for Rmarkdown files:

```lua
require("cmp-bibtex").setup({
  filetypes = { "markdown", "rmd", "tex" }
})
```

Or, with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "liamvdvyver/cmp-bibtex",
  opts = { filetypes = { "markdown", "rmd", "tex" } }
}
```
