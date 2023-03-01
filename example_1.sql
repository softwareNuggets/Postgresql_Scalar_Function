
create or replace function WhenShowPremiered(name_of_tv_show VARCHAR(60))
returns date
as
$$
declare
	whenDidShowPremiere date;
begin
	select	tvs.premiere_date into whenDidShowPremiere
	from tv_shows tvs
	where tvs.show_name = name_of_tv_show
	limit 1;
	
	return whenDidShowPremiere;
end;
$$
language plpgsql;

select WhenShowPremiered('Friends')
