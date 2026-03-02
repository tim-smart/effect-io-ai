Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.pick

Creates a new tuple containing only the elements at the specified indices.

- Use to select a subset of elements from a tuple by position.
- The result order matches the order of the provided indices.
- Does not mutate the input; returns a fresh tuple.

**Example** (Selecting elements by index)

```ts
import { Tuple } from "effect"

const result = Tuple.pick(["a", "b", "c", "d"], [0, 2, 3])
console.log(result) // ["a", "c", "d"]
```

**See**

- `omit` – the inverse (exclude indices instead)
- `get` – extract a single element

**Signature**

```ts
declare const pick: { <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>>(indices: I): (self: T) => PickTuple<T, I[number]>; <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>>(self: T, indices: I): PickTuple<T, I[number]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L170)

Since v4.0.0