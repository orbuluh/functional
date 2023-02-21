# Functional programming

## Recommended books

- [The Structure and Interpretation of Computer Programs](https://web.mit.edu/6.001/6.037/sicp.pdf)
- [Programming in Haskell](http://www.cs.nott.ac.uk/~pszgmh/pih.html)

## Language selection

> [Thinking about Haskell v.s. Clojure ...](https://www.reddit.com/r/haskell/comments/2mr7ks/comment/cm6wd8p/?utm_source=share&utm_medium=web2x&context=3)
>
> - Clojure is in some aspects like Python:
>   - it has a vast amount of tools, it's straightforward, easy, flexible and pragmatic. It will take you a long way; from a single file to a distributed cluster on AWS. ....
> - Clojure ... was becoming a nightmare to write as projects got bigger.
>   - For example I ended up with lots of extra arguments on my functions, explicit state, or often it could become difficult to reason about complex abstractions.
> - So I learnt Haskell.
>   - I learnt that Functor and Applicative give you pragmatic ways to handle a million different complex data structures and abstract data types without caring about their implementation.
>   - I learnt that Monad gives you rational ways to structure logic and the order of computations, giving you more power than in an imperative language I know ("programmable semicolons!").
>   - I learnt that you can handle errors in pure and explicit ways. I discovered that almost everything can be composable; I can have a thousand computations that may fail, run them in parallel trivially and still catch all those errors in a single line while using the same operators I use to print text to the screen.
>   - I fell in love with currying and how easily things can work together if the language lets them.
>   - Also I learnt that concurrency can be a beautifully simple endeavour, that there are actually a lot of ways to do it and that it actually makes things faster without adding unnecessary complexity.
>   - I learnt how rich types can give structure, meaning and modularity to a piece of code (almost) for free.
> - And all this in one language, with a great package manager, a lovely collection of well thought libraries, an industrial strength compiler, testing tools, profiling options, and a great community full of the smartest people I've ever met. I haven't touched Clojure since.

---

TODO: [Programming guidelines](https://wiki.haskell.org/Programming_guidelines)
