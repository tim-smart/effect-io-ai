Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.appendElements

Concatenates two tuples into a single tuple.

**When to use**

Use to append all elements from one tuple to another tuple.

**Details**

The result type is `[...T1, ...T2]`, preserving all element types from both
tuples. Neither input tuple is mutated; a fresh tuple is returned.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L240)

Since v4.0.0