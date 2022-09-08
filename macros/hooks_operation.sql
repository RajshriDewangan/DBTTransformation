{% macro insert_hooks(action_name) %}

   insert into "VWE_DATABASE"."PUBLIC"."Hooks" (hook_type) values ('{{action_name}}');
   commit;

{% endmacro %}
