Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNull

Checks whether a value is not `null`.

When to use:
- You want to filter out `null` while preserving other falsy values.

Behavior:
- Pure; does not mutate input.
- Returns a refinement that excludes `null`.

**Example** (Filter null)

```ts
import { Predicate } from "effect"

const values = [1, null, 2]
const nonNull = values.filter(Predicate.isNotNull)

console.log(nonNull)
```

See also: `isNull`, `isNotNullish`

**Signature**

```ts
declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L851)

Since v2.0.0