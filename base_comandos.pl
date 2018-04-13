comando("git").
comando("ls").
comando("cd").
comando("workon").
comando("pip").
comando("python").
comando("python3").
flag("git", "--help").
subComando("git", "help").
subComando(X) :- subComando(_, X).

% flag(X,Y):- comando(X), flag(X,Y); split_string(X)

ehComando(Comando) :- comando(Comando), Y is (Comando),!, write(Y); subComando(Comando), Y is (Comando), !, write(Y).
flags(Comando) :- flag(Comando,Flag), write(Flag).