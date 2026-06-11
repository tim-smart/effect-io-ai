Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotUndefined

Checks whether a value is not `undefined`.

**When to use**

Use when you need a `Predicate` refinement that filters out `undefined`
while preserving other falsy values.

**Details**

Returns a refinement that excludes `undefined`.

**Example** (Filter undefined)

```ts
import { Predicate } from "effect"

const values = [1, undefined, 2]
const defined = values.filter(Predicate.isNotUndefined)

console.log(defined)
```

**See**

- `isUndefined`
- `isNotNullish`

**Signature**

```ts
declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L799)

Since v2.0.0