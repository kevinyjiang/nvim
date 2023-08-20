local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
    options = {
        numbers = "none",
        number_style = "",
        mappings = true,
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator_icon = "▎",
        modified_icon = "●",
        left_trunc_marker = "",
        right_trunc_marker = "",
        name_formatter = function(buf)
        if buf.name:match("%.md") then
            return vim.fn.fnamemodify(buf.name, ":t:r")
        end
        end,
        max_name_length = 30,
        max_prefix_length = 30,
        tab_size = 21,
        diagnostics = false,
        offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left"
        }
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "slope",
        style_preset = bufferline.style_preset.no_italic,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "id"
    }
}
