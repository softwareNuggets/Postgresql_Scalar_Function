
create or replace function WhenShowPremiered_v2(name_of_tv_show VARCHAR(60))
returns date
as
$$
declare
	whenDidShowPremiere date;
begin
	select	tvs.premiere_date into whenDidShowPremiere
	from tv_shows tvs
	where upper(trim(tvs.show_name)) = upper(trim(name_of_tv_show))
	limit 1;
	
	return whenDidShowPremiere;
end;
$$
language plpgsql;

select WhenShowPremiered_v2('friends')
