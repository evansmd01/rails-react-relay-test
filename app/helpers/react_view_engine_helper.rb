require 'securerandom'

module ReactViewEngineHelper
  def render_react_view(options = {})
    #set default options if none are supplied
    options = {
        controller: controller_name,
        action: action_name
    }.merge(options)

    wrapper_id = SecureRandom.uuid[0..8]

    script = %Q(
    window.onload = function(){
      ReactViewEngine.render('#{options[:controller]}', '#{options[:action]}', #{options.to_json}, document.getElementById("#{wrapper_id}"));
    };
)
    content_tag(:div, content_tag(:script, script, nil, false), id: wrapper_id, class: "react-view-container")

  end
end