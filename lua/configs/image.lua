local options = {
  processor = "magick_cli",
  integrations = {
    markdown = {
      only_render_image_at_cursor = true,
      only_render_image_at_cursor_mode = "popup",
      download_remote_images = true,
    },
  },
}

return options
