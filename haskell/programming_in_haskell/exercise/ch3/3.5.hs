-- Why is it not feasible in general for function types to be
-- instances of the Eq class? When is it feasible?
-- Hint: two functions of the same type are equal if they always
-- return equal results for equal arguments.

Because function might not be total? When there are argument with result undefined, you can't compare?
Or say, function input are infinite, and we can't check the result of all input. So we can't say if 2 functions are equal.

https://stackoverflow.com/a/10957456
> Almost all of the built in types are members of Eq already;
  the big exception are function types.
  The only really sensible notion of value equality for functions is extensional
  equality (do they return the same output for every input).
  It's tempting to say we'll use that and let the compiler access a
  representation of the function definition to compute this, but unfortunately
  determining whether two arbitrary algorithms (here encoded in Haskell syntax)
  always produce the same output is a known uncomputable problem; if the
  compiler could actually do that it could solve the Halting Problem, and we
  wouldn't have to put up with the bottom value being a member of every type.