
# Andrew "Andy" Lee

Publications

- Call Map, a tool for navigating call graphs.
  Blog post: <https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2017/july/call-map-a-tool-for-navigating-call-graphs-in-python/>.
  Project page: <https://github.com/nccgroup/call_map>. 2017

- Alex Balducci, Jake Meredith, and Andy Lee. "(n+1)sec Cryptographic and Protocol Review"
  URL: <https://www.nccgroup.trust/us/our-research/n1sec-cryptographic-and-protocol-review/?research=Public+Reports>
  Assessment of client product. 2017


Projects

- Formal proof of the group key exchange part of the (n+1)sec protocol (AKA np1sec) using Tamarin-prover and Isabelle. Most of the technical work is done. Some of the initial results are here: <https://github.com/nccgroup/formal_np1sec>.

- A messaging protocol that forces a MITM attacker who has compromised all
  relevant keys to corrupt the contents every message that they decrypt, before
  they can read the uncorrupted, original messages. This means they cannot
  eavesdrop without leaving a trace, and very likely the messages will become
  so corrupted that the legitimate participants are no longer having a coherent
  exchange with each other. An initial writeup of the idea is here:
  <https://gist.github.com/ajylee/7fc35e3028478b10ee30f1cfd6eeac44>. I'm still
  working on writing up further developments, like an actual use case.


Interests

- Cryptography, Protocols, Primitives
- Reverse Engineering
- Formal Methods/Techniques, Verification, Progam Analysis


Things I'm thinking about

- Extend Call Map with pyt and FB Infer
- Extend Call Map with dumb-jump.el - type definition finder
- Maybe I'll say later

## Articles
- [the-question-why.md](the-question-why.md)


- [thoughts-on-security.md](thoughts-on-security.md)

