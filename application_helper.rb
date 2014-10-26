module ApplicationHelper
  def embed_youtube_video(id)
    "<iframe seamless='seamless' allowfullscreen width='800' height='480' src='http://www.youtube.com/embed/#{id}" \
    "?hl=pt_PT&cc_lang_pref=pt_PT&cc_load_policy=1&theme=light&rel=0'></iframe>"
  end
end
