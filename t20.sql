
use T20


--write a query to find the all the data 
select * from T20..t20_data


--find the top 5 data in t20 world cup
select top 5 * from T20..t20_data


--Now let’s look at the number of matches won by each team in the world cup
select winner, count(winner) AS won_matches
from T20..t20_data
group by winner


--Now let’s have a look at the number of matches won by batting first or second in the t20 world cup 2022:
select [won by], count([won by]) as won_battingfirst_or_sdecond
from T20..t20_data
group by [won by]


--Now, let’s have a look at the toss decisions by teams in the world cup:
select [toss decision], count([toss decision]) as toss_decisison
from T20..t20_data
group by [toss decision]



--Now let’s have a look at the top scorers in the t20 world cup 2022:
select [top scorer] , [highest score]
from T20..t20_data



--Now let’s have a look at the number of player of the match awards in the world cup:
select [player of the match] , COUNT([player of the match]) as player_of_the_match
from T20..t20_data
group by [player of the match]



--Now let’s have a look at the bowlers with the best bowling figures at the end of the matches:
select [best bowler], COUNT([best bowler]) as best_bowler 
from T20..t20_data
group by [best bowler]



--Now let’s compare the runs scored in the first innings and second innings in every stadium of the t20 world cup 2022:
select venue , [first innings score] as first_innings_score, [second innings score] as second_innings_score
from T20..t20_data




--Now let’s compare the number of wickets lost in the first innings and second innings in every stadium of the t20 world cup 2022:
select venue, [first innings wickets] as first_innings_wickets, [second innings wickets] as second_innings_wickets
from T20..t20_data


--select venue , COUNT(venue)
--from T20..t20_data
--group by venue