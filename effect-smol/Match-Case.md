Package: `effect`<br />
Module: `Match`<br />

## Match.Case

Represents a single pattern matching case.

**When to use**

Use as the common public type for code that needs to inspect, store, or pass
either positive or negative pattern matching cases.

**Details**

A `Case` can be either a positive match (`When`) or a negative match (`Not`).
Cases are the building blocks of pattern matching logic and determine
how values are tested and transformed.

**See**

- `When` for positive cases
- `Not` for negative cases

**Signature**

```ts
type Case = When | Not
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L167)

Since v4.0.0