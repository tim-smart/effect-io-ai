Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotUndefined

Checks whether a value is not `undefined`.

When to use:
- You want to filter out `undefined` while preserving other falsy values.

Behavior:
- Pure; does not mutate input.
- Returns a refinement that excludes `undefined`.

**Example** (Filter undefined)

```ts
import { Predicate } from "effect"

const values = [1, undefined, 2]
const defined = values.filter(Predicate.isNotUndefined)

console.log(defined)
```

See also: `isUndefined`, `isNotNullish`

**Signature**

```ts
declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L792)

Since v2.0.0