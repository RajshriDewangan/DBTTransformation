
select
{% for catg in ["Gold","Silver","Bronze"] %}
    sum(case when category= '{{ catg }}' then YEARLY_EXPENDITURE end ) as sum_expendit{{catg}},
{% endfor %}
count(*) as total
from VWE_DATABASE.PUBLIC.USECASE_5
