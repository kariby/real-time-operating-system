-module(consumer).
-export([start/0, take/0]).

start() -> Pid = spawn(fun consumer:take/0),
		register(atom, Pid).
take() ->
    receive
        Id ->
			io:format("<consumer>: start work with ~p~n" ,[Id]),
			timer:sleep(6000),
			io:format("<consumer>: stop work with ~p~n~n" ,[Id]),
            take()
    end.
% Pid = spawn(fun consumer:take/0).