Package: `effect`<br />
Module: `Cause`<br />

## Cause.empty

A `Cause` with an empty `reasons` array.

**When to use**

Use to represent the absence of failure when constructing or combining
causes.

**Details**

Represents the absence of failure. Combining any cause with `empty` via
`combine` returns the original cause unchanged.

**Example** (combining with the empty cause)

```ts
import { Cause } from "effect"

const cause = Cause.combine(Cause.empty, Cause.fail("boom"))

console.log(cause.reasons.length) // 1
console.log(Cause.hasFails(cause)) // true
```

**See**

- `combine` for merging causes where `empty` acts as the identity

**Signature**

```ts
declare const empty: Cause<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L530)

Since v2.0.0