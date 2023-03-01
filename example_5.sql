
create or replace function WhenShowPremiered_v5(name_of_tv_show VARCHAR(60))
returns date
as
$$
declare
	whenDidShowPremiere date;
begin

    IF name_of_tv_show IS NULL THEN
        RETURN NULL;
    END IF;
	
	select	tvs.premiere_date into whenDidShowPremiere
	from tv_shows tvs
	where upper(trim(tvs.show_name)) = upper(trim(tvs.show_name))
	limit 1;
	
	IF NOT FOUND THEN
		RAISE EXCEPTION 'No data found in % table for % column = %', 'tv_shows', 'show_name',name_of_tv_show;
	END IF;

	
	return whenDidShowPremiere;
end;
$$
language plpgsql;

select WhenShowPremiered_v5(null)
select WhenShowPremiered_v4('friends')
