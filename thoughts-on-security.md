
# Formalizing Pentesting (draft ver 0.1)

:date: 2017-08-16

Pentesting is a search algo for vulns. The goal is falsifying the proposition
that the target fulfills its security specs (which might not be provided and
you have to generate). Not coincidentally, this is the same technique for
generating proofs in automated theorem proving. Searching for contradictions
is a common approach to proving theorems. This is essentially pentesting the
theorems. There are various strategies with which you choose the next tactic.
One example of a tactic is induction -- you try to deduce a base case and an
inductive case to prove some goal. One strategic concept is to backtrack --
start from the target statement and work backwards, its reverse being forward
propogation, start from the known statements and derive more statements, with
some strategem[^strategem] to inform what tactics to apply to get new
statements. See below for more on tactics. The point here is to say that if
there is a Formal Methods concept, it can be applied to pentesting.

Now let's translate this into practice. When I do a pentest, I first try the
pray-and-spray strategy. Just look around, sniffing for badness. At the same
time be looking for goodness, and get a grip on how the target behaves, what
it's supposed to do, and try to test out if it really is doing what it says on
the tin. Exercise all the functionality.

If something looks good in regular walk-through and spray-and-pray, I step it
up by listing out all the security specs and a percentage on how confident I am
in them. I never write 100%. If I write 99% it means I'm not coming back to
it. These are not formal specs, but the more I can formalize them, the more
logic holes I can catch. Then I use a conflict-driven approach -- I argue with
myself (see below).

Now if everything checks out with your first spec, I go back and make it more
detailed. Think about all the classes of attacks to inform your spec. When I
read over your spec, if I don't find any holes, then go do research, read vuln
articles for inspiration, or take a nap. I might just find a hole in my spec.
Also, I have found that keeping work and play separate doesn't work that well.
Some times I dream of personal things, some times I dream of vulns for work.
No matter what, when I get up, I have to write those down.


[^heuristics]: The technical term is "heuristics". I prefer "strategy" in this
  article, and "strategems" for strategic concepts that inform your strategy.

[^strategem]: A concept that informs the construction of your strategy. The
  strategy ultimately tells you what tactic to choose in any given situation.


# Strategems

One of my favorite practical strategems, inspired by the cryptanalysis
technique of the same name, and reinforced by an offhand comment by
Leino[^leino], is meet-in-the-middle. You alternate forward propagation and
backtracking. This can reduce the complexity of the algorithm a ton, depending
on where you meet in the middle, and the size of the search space. I intend
to write another post on a math puzzle where I detail how I used this approach.

Another strategem is Conflict-Driven Clause Learning (CDCL)[^CDCL] which I am not
deeply familiar with in Formal Methods, but has inspired my pentesting methods.
While CDCL has a technical definition, the key point in practice is to use
conflicts to prune your searches. Argue with yourself, have a little blue team
in your mind and a red team. One tries to argue that there is no vuln, the
other that there is. Take turns poking holes in each side's argument, i.e.
search for statements that refute the other's claim, then this will lead to
more statements. Now poke holes in these new statements from the other side's
perspective.

[^leino]: a person who works on Dafny
[^CDCL]: https://profs.scienze.univr.it/~bonacina/papers/AFM2017cdr.pdf


# Tactics

TODO



# What Pentesting can do for Formal Methods (unfinished)

There has been research into how to make proof searches more human-like[^human-like-prover]. Perhaps the
methods of pentesters can be fruitful in developing these methods.

[^human-like-prover]: TODO


# The Broader Perspective on What It Means to Learn

People search for the question why. It they want to spec out things. Specing
things out simplifies things. It reduces the amount of information you need to
understand something. The search for reasons why is a compression algorithm.

When one finds the reasons why, what is foggy becomes clear, and they become
happy. The clarity comes from being able to fit the whole thing in their head,
and it is like reaching the top of a mountain, now being able to see far in
every direction from a single vantage point.

Compression is not enough, however. You need to get the details back from the
reasons. In other words, decompression, in other words, deduction as opposed to
abduction.

These compression/decompresion, abduction/deduction, why/therefore, are all
different words for the same basic human imperative.

My childhood friend used to say, "Why ask why?". Now I have an answer -- we do
it to fit things in our heads. However, I know what he would have said next --
"Why do we fit things in our heads?".  I'll just cut to the chase here, the
power of reason is limited. The path you trace when you successively ask for
reasons ends in a place that is under-constrained.
