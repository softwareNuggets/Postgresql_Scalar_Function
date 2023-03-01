
create or replace function WhenShowPremiered_v4(name_of_tv_show VARCHAR(60))
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
	
	IF NOT FOUND THEN
		RAISE EXCEPTION 'No data found in % table for % column = %', 'tv_shows', 'show_name',name_of_tv_show;
	END IF;

	
	return whenDidShowPremiere;
end;
$$
language plpgsql;

select WhenShowPremiered_v4('friends')
select WhenShowPremiered_v4('freinds')
