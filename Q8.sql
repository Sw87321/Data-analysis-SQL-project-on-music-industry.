-- Q8. Return all the track names that have a song length longer than the average 
-- song length. Return the Name and milliseconds for each track. Order by song
-- length with the longest songs listed first.

select name, milliseconds from track
where milliseconds>
                  (select avg(milliseconds) as song_length from track)
order by milliseconds desc