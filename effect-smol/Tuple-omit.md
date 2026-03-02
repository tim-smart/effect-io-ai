Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.omit

Creates a new tuple with the elements at the specified indices removed.

- Use to drop elements from a tuple by position.
- Elements not at the specified indices are kept in their original order.
- Does not mutate the input; returns a fresh tuple.

**Example** (Removing elements by index)

```ts
import { Tuple } from "effect"

const result = Tuple.omit(["a", "b", "c", "d"], [1, 3])
console.log(result) // ["a", "c"]
```

**See**

- `pick` – the inverse (keep only specified indices)

**Signature**

```ts
declare const omit: { <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>>(indices: I): (self: T) => OmitTuple<T, I[number]>; <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>>(self: T, indices: I): OmitTuple<T, I[number]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L211)

Since v4.0.0