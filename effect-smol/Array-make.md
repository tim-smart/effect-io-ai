Package: `effect`<br />
Module: `Array`<br />

## Array.make

Creates a `NonEmptyArray` from one or more elements.

**When to use**

Use when you need to create a typed non-empty array from literal values.

**Details**

The element type is inferred as the union of all arguments. Because at least
one argument is required, this always returns a `NonEmptyArray`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L219)

Since v2.0.0