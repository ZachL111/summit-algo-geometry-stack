# summit-algo-geometry-stack

`summit-algo-geometry-stack` keeps a focused OCaml implementation around algorithms. The project goal is to package an OCaml local lab for geometry analysis with log and snapshot fixtures, replay consistency checks, and documented operating limits.

## Why I Keep It Small

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Summit Algo Geometry Stack Review Notes

Start with `input width` and `boundary pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/summit-algo-geometry-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `boundary pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The OCaml code keeps the review rule close to the tests.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
