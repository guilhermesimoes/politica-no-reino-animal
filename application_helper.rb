module ApplicationHelper
  # Returns an iframe pointing to the Youtube video whose `id` is passed in.
  #
  # Here's what each embedded player parameter does:
  # hl             - Sets the player's interface language. Affects player tooltips and the default subtitles.
  # cc_lang_pref   - Sets the subtitles language.
  # cc_load_policy - Turns on the subtitles.
  # theme          - Switches the player theme. The default is `dark`, but a `light` theme is also available.
  # rel            - Indicates whether related videos are shown after the video ends.
  def embed_youtube_video(id)
    "<iframe seamless='seamless' allowfullscreen width='800' height='480' src='http://www.youtube.com/embed/#{id}" \
    "?hl=pt_PT&cc_lang_pref=pt_PT&cc_load_policy=1&theme=light&rel=0'></iframe>"
  end
end
