comando("git").
comando("ls").
comando("cd").
comando("workon").
comando("pip").
comando("python").
comando("python3").
flag("git", "--help").
% flag(X,Y):- comando(X), flag(X,Y); split_string(X)

ehComando(Comando) :- comando(Comando).
flags(Comando) :- flag(Comando,Flag), write(Flag).