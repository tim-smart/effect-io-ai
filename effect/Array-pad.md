Package: `effect`<br />
Module: `Array`<br />

## Array.pad

Pads an array.
Returns a new array of length `n` with the elements of `array` followed by `fill` elements if `array` is shorter than `n`.
If `array` is longer than `n`, the returned array will be a slice of `array` containing the `n` first elements of `array`.
If `n` is less than or equal to 0, the returned array will be an empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.pad([1, 2, 3], 6, 0)
console.log(result) // [1, 2, 3, 0, 0, 0]
```

**Signature**

```ts
declare const pad: { <A, T>(n: number, fill: T): (self: Array<A>) => Array<A | T>; <A, T>(self: Array<A>, n: number, fill: T): Array<A | T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1932)

Since v3.8.4