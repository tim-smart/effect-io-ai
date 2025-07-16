Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOfAtLeast

A refinement that checks if a `ReadonlyArray<T>` is a tuple with at least `N` elements.
If the check is successful, the type is narrowed to `TupleOfAtLeast<N, T>`.

**Example**

```ts
import * as assert from "node:assert"
import { isTupleOfAtLeast } from "effect/Predicate"

const isTupleOfAtLeast3 = isTupleOfAtLeast(3)

assert.strictEqual(isTupleOfAtLeast3([1, 2, 3]), true);
assert.strictEqual(isTupleOfAtLeast3([1, 2, 3, 4]), true);
assert.strictEqual(isTupleOfAtLeast3([1, 2]), false);

const arr: number[] = [1, 2, 3, 4];
if (isTupleOfAtLeast(arr, 3)) {
  // The type of arr is now [number, number, number, ...number[]]
  const [a, b, c] = arr;
  assert.deepStrictEqual([a, b, c], [1, 2, 3])
}
```

**Signature**

```ts
declare const isTupleOfAtLeast: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L248)

Since v3.3.0