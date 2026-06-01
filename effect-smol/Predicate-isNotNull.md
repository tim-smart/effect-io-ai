Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNull

Checks whether a value is not `null`.

**When to use**

Use when you need a `Predicate` refinement that filters out `null` while
preserving other falsy values.

**Details**

Returns a refinement that excludes `null`.

**Example** (Filter null)

```ts
import { Predicate } from "effect"

const values = [1, null, 2]
const nonNull = values.filter(Predicate.isNotNull)

console.log(nonNull)
```

**See**

- `isNull`
- `isNotNullish`

**Signature**

```ts
declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L916)

Since v2.0.0