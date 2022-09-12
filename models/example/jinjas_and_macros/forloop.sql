select
EVENTS,
{% for y in [2017,2018,2019,2020,2021] %}
count(case when EVENT_YEAR = {{ y }} then EVENTS end) as event_year_{{ y }},
{% endfor %}
count(*) as total
from VWE_DATABASE.PUBLIC.LATEST_CONVERSION
group by EVENTS
