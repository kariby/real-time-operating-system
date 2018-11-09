-module(manufacturer).
-export([send/1]).

send(Request) ->
atom ! Request.
% receive
% Response ->
% Response
% end.