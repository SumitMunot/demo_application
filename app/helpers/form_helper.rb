module FormHelper

  def text_field_for(f, field, options = {})
    size = options[:size].present? ? "input-#{options[:size]}" : "form-control"
    options.delete(:size)

    options[:class] = "#{size} #{options[:class]}"
    if options[:append].present? || options[:prepend].present?
      prepend, append = options[:prepend], options[:append]
      css_classes = []
      css_classes << "input-append" if options[:append].present?
      css_classes << "input-prepend" if options[:prepend].present?
      options.delete :append
      options.delete :prepend
      content_field_for(:text_field, f, field, options) do
        content_tag(:div, class: css_classes.join(" ")) do
          content = ""
          content << content_tag(:span, prepend, class: 'add-on') if prepend.present?
          content << f.text_field(field, options)
          content << content_tag(:span, append, class: 'add-on') if append.present?
          content.html_safe
        end
      end
    else
      content_field_for(:text_field, f, field, options)
    end
  end

  def password_field_for(f, field, options = {})
    content_field_for(:password_field, f, field, options)
  end

  def content_field_for(field_type, f, field, options)
    label = label_for(field, options)
    content_tag(:div, class: 'form-group') do
      control_group = f.label(field, label, class: 'col-lg-2 control-label')
      control_group << content_tag(:div, class: 'col-lg-10') do
        if block_given?
          yield
        else
          f.send(field_type, field, options)
        end
      end
    end.html_safe
  end  

  def label_for(field, options)
    options[:label] || I18n.t("field_labels.#{field}", default: field.to_s.gsub("_", " ").capitalize)
  end

end