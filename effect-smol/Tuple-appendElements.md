Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.appendElements

Concatenates two tuples into a single tuple.

- The result type is `[...T1, ...T2]`, preserving all element types from
  both tuples.
- Does not mutate either input; returns a fresh tuple.

**Example** (Concatenating tuples)

```ts
import { pipe, Tuple } from "effect"

const result = pipe(Tuple.make(1, 2), Tuple.appendElements(["a", "b"] as const))
console.log(result) // [1, 2, "a", "b"]
```

**See**

- `appendElement` – append a single element

**Signature**

```ts
declare const appendElements: { <const T2 extends ReadonlyArray<unknown>>(that: T2): <const T1 extends ReadonlyArray<unknown>>(self: T1) => [...T1, ...T2]; <const T1 extends ReadonlyArray<unknown>, const T2 extends ReadonlyArray<unknown>>(self: T1, that: T2): [...T1, ...T2]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L276)

Since v2.0.0