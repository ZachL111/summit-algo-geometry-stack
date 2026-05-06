# Summit Algo Geometry Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 157 | ship |
| stress | search depth | 170 | ship |
| edge | boundary pressure | 156 | ship |
| recovery | complexity | 168 | ship |
| stale | input width | 239 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `edge` becomes less cautious without a clear reason, I would inspect the drag input first.
