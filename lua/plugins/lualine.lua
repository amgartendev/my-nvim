return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Fully transparent theme
    local transparent_theme = {
      normal = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
      insert = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
      visual = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
      replace = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
      command = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
      inactive = {
        a = { bg = "none", fg = nil },
        b = { bg = "none", fg = nil },
        c = { bg = "none", fg = nil },
      },
    }

    -- File name
    local function filename()
      return vim.fn.expand("%:t")
    end

    -- Diagnostics: E0 W0 H0
    local function diagnostics()
      local e = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
      local w = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
      local h = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })

      return string.format("E%d W%d H%d", e, w, h)
    end

    -- Git branch
    local function branch()
      return vim.b.gitsigns_head or ""
    end

    -- Git diff
    local function diff()
      local g = vim.b.gitsigns_status_dict
      if not g then
        return ""
      end
      return string.format("+%d -%d ~%d", g.added or 0, g.removed or 0, g.changed or 0)
    end

    -- Mode
    local function mode()
      local modes = {
        n = "N",
        i = "I",
        v = "V",
        V = "V-L",
        ["\22"] = "V-B",
        c = "C",
        s = "S",
        R = "R",
      }
      return modes[vim.fn.mode()] or vim.fn.mode()
    end

    opts.options = {
      theme = transparent_theme,
      section_separators = "",
      component_separators = "",
      globalstatus = true,
    }

    opts.sections = {
      lualine_a = {},
      lualine_b = {},

      -- LEFT
      lualine_c = {
        { filename, padding = { left = 1, right = 1 }, color = { bg = "#393e3f" } },
        { diagnostics, padding = { left = 1, right = 1 }, color = { bg = "#1d1d1f" } },
      },

      -- MIDDLE
      lualine_x = {
        {
          function()
            return ""
          end,
          padding = 0,
        },
      },

      -- RIGHT
      lualine_y = {
        { branch, padding = { left = 1, right = 1 }, color = { bg = "#1d1d1f" } },
        { diff, padding = { left = 1, right = 1 }, color = { bg = "#1d1d1f" } },
        { mode, padding = { left = 1, right = 1 }, color = { bg = "#393e3f" } },
      },

      lualine_z = {},
    }

    return opts
  end,
}
