local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      "%.out",
      "^vendor/",
      "%.o",
      "%.mod",
    }
  }
}
