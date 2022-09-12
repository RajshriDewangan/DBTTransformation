select
EVENTS,
{{count_event('EVENT_YEAR')}} as count_event_year,
count(*) as total
from VWE_DATABASE.PUBLIC.LATEST_CONVERSION
group by EVENTS
