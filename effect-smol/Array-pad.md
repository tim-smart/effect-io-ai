Package: `effect`<br />
Module: `Array`<br />

## Array.pad

Pads or truncates an array to exactly `n` elements, filling with `fill`
if the array is shorter, or slicing if longer.

- Returns an empty array when `n <= 0`.

**Example** (Padding an array)

```ts
import { Array } from "effect"

console.log(Array.pad([1, 2, 3], 6, 0)) // [1, 2, 3, 0, 0, 0]
```

**See**

- `take` — truncate without padding
- `replicate` — create an array of a single repeated value

**Signature**

```ts
declare const pad: { <A, T>(n: number, fill: T): (self: Array<A>) => Array<A | T>; <A, T>(self: Array<A>, n: number, fill: T): Array<A | T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2488)

Since v3.8.4