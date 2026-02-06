{% macro category(v) %}
    case
        when {{ v }} < 1000 then 'Low'
        when {{ v }} < 2000 then 'Average'
        else 'High'
    end
{% endmacro %}