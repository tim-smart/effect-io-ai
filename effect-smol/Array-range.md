Package: `effect`<br />
Module: `Array`<br />

## Array.range

Creates a `NonEmptyArray` containing a range of integers, inclusive on both
ends.

- Use when you need a sequence of consecutive integers.
- If `start > end`, returns `[start]`.
- Always returns a `NonEmptyArray`.

**Example** (Creating a range)

```ts
import { Array } from "effect"

const result = Array.range(1, 3)
console.log(result) // [1, 2, 3]
```

**See**

- `makeBy` — generate values from a function

**Signature**

```ts
declare const range: (start: number, end: number) => NonEmptyArray<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L285)

Since v2.0.0