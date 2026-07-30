Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOf

A refinement that checks if a `ReadonlyArray<T>` is a tuple with exactly `N` elements.
If the check is successful, the type is narrowed to `TupleOf<N, T>`.

**Example**

```ts
import * as assert from "node:assert"
import { isTupleOf } from "effect/Predicate"

const isTupleOf3 = isTupleOf(3)

assert.strictEqual(isTupleOf3([1, 2, 3]), true);
assert.strictEqual(isTupleOf3([1, 2]), false);

const arr: number[] = [1, 2, 3];
if (isTupleOf(arr, 3)) {
  // The type of arr is now [number, number, number]
  const [a, b, c] = arr;
  assert.deepStrictEqual([a, b, c], [1, 2, 3])
}
```

**Signature**

```ts
declare const isTupleOf: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOf<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOf<N, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L217)

Since v3.3.0