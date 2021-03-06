-module(queue).

-export([new/0, take/1, put/2]).

new() ->
     {[], []}.

put(Element, {Head, Tail}) ->
    {Head, [Element|Tail]}.

take({[], []}) ->
    fail;
take({[], Tail}) ->
    get({lists:reverse(Tail), []});
take({[Element|Rest], Tail}) ->
    {ok, Element, {Rest, Tail}}.
    
     
