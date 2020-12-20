module ApplicationHelper

    def container_card(title, &block)
        content_tag(:div, class: "row d-flex flex-row") do
            content_tag(:div, class: "col col-4") do
                content_tag(:div, class: "card card-accent-info mt-5 m-3 ml-3") do
                    content_tag(:div, class: "card-header") do
                        title
                    end +
                    content_tag(:div, class: "card-body") do
                        capture(&block)
                    end
                end
            end
        end
    end
    
    def boolean_display(boolean)
        if boolean.nil?
            content_tag(:span, "Non indiqué", class: "btn btn-default btn-xs")
        elsif boolean == true
            content_tag(:span, "Oui", class: "btn btn-success btn-xs")
        else
            content_tag(:span, "Non", class: "btn btn-danger btn-xs")
        end
    end
    
    # To display euros
    def money_display(value)
        number_to_currency(value, unit: " €", separator: ",", delimiter: " ", precision: 0, format: "%n %u")
    end
    
end
