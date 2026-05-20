Package: `effect`<br />
Module: `Match`<br />

## Match.Case

Represents a single pattern matching case.

**Details**

A `Case` can be either a positive match (`When`) or a negative match (`Not`).
Cases are the building blocks of pattern matching logic and determine
how values are tested and transformed.

**Signature**

```ts
type Case = When | Not
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L175)

Since v4.0.0