Package: `effect`<br />
Module: `Array`<br />

## Array.window

Creates sliding windows of size `n` from an `Iterable`.
If the number of elements is less than `n` or if `n` is not greater than zero,
an empty array is returned.

**Example**

```ts
import * as assert from "node:assert"
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
assert.deepStrictEqual(Array.window(numbers, 3), [[1, 2, 3], [2, 3, 4], [3, 4, 5]])
assert.deepStrictEqual(Array.window(numbers, 6), [])
```

**Signature**

```ts
declare const window: { (n: number): <A>(self: Iterable<A>) => Array<Array<A>>; <A>(self: Iterable<A>, n: number): Array<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2090)

Since v3.13.2