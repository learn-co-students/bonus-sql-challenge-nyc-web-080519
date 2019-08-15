# Write methods that return SQL queries for each part of the challeng here

def guest_with_most_appearances
  # write your query here!
  <<-SQL
    SELECT *
    FROM guests
    GROUP BY name
    ORDER BY COUNT(name) DESC
    LIMIT 1;
  SQL
end

def most_popular_profession_for_each_year
  #don't know how to only select the max count of occupation per year
  <<-SQL
    SELECT year, occupation, COUNT(occupation)
    FROM guests
    GROUP BY year, occupation
    ORDER BY year, COUNT(occupation) DESC;
  SQL
end

def profession_on_show_most_overall
  <<-SQL
    SELECT occupation
    FROM guests
    GROUP BY occupation
    ORDER BY COUNT(occupation) DESC
    LIMIT 1;
  SQL
end

def how_many_first_name_bill
  <<-SQL
    SELECT COUNT(name)
    FROM guests
    WHERE name
    LIKE 'Bill %';
  SQL
end

def patrick_stewart_dates
  <<-SQL
    SELECT date
    FROM guests
    WHERE name = "Patrick Stewart";
  SQL
end

def year_with_most_guests
  <<-SQL
    SELECT year
    FROM guests
    GROUP BY year
    ORDER BY COUNT(id) DESC
    LIMIT 1;
  SQL
end

def most_popular_group_for_each_year
  #don't know how to only select the max count of category per year
  <<-SQL
    SELECT year, category, COUNT(category)
    FROM guests
    GROUP BY year, category
    ORDER BY year, COUNT(category) DESC;
  SQL
end