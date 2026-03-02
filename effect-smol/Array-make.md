Package: `effect`<br />
Module: `Array`<br />

## Array.make

Creates a `NonEmptyArray` from one or more elements.

- Use when you have literal values and want a typed non-empty array.
- The element type is inferred as the union of all arguments.
- Always returns a `NonEmptyArray` since at least one argument is required.

**Example** (Creating an array from values)

```ts
import { Array } from "effect"

const result = Array.make(1, 2, 3)
console.log(result) // [1, 2, 3]
```

**See**

- `of` — create a single-element array
- `fromIterable` — create from any iterable

**Signature**

```ts
declare const make: <Elements extends NonEmptyArray<unknown>>(...elements: Elements) => NonEmptyArray<Elements[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L202)

Since v2.0.0