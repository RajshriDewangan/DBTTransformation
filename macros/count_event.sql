{% macro count_event(EVENT_YEAR) %}

({% for y in [2017,2018,2019,2020,2021] %}
count(case when EVENT_YEAR = {{ y }} then EVENTS end) as event_year_{{ y }},
{% endfor %})

{% endmacro %}