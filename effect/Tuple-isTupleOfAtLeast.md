Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.isTupleOfAtLeast

Determine if an `Array` is a tuple with at least `N` elements, narrowing down the type to `TupleOfAtLeast`.

An `Array` is considered to be a `TupleOfAtLeast` if its length is at least `N`.

**Example**

```ts
import * as assert from "node:assert"
import { isTupleOfAtLeast } from "effect/Tuple"

assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 3), true);
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 2), true);
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 4), false);

const arr: number[] = [1, 2, 3, 4];
if (isTupleOfAtLeast(arr, 3)) {
  console.log(arr);
  // ^? [number, number, number, ...number[]]
}

```

**Signature**

```ts
declare const isTupleOfAtLeast: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L304)

Since v3.3.0