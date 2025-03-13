Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTupleOf

Determine if an `Array` is a tuple with exactly `N` elements, narrowing down the type to `TupleOf`.

An `Array` is considered to be a `TupleOf` if its length is exactly `N`.

**Example**

```ts
import * as assert from "node:assert"
import { isTupleOf } from "effect/Predicate"

assert.deepStrictEqual(isTupleOf([1, 2, 3], 3), true);
assert.deepStrictEqual(isTupleOf([1, 2, 3], 2), false);
assert.deepStrictEqual(isTupleOf([1, 2, 3], 4), false);

const arr: number[] = [1, 2, 3];
if (isTupleOf(arr, 3)) {
  console.log(arr);
  // ^? [number, number, number]
}
```

**Signature**

```ts
declare const isTupleOf: { <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOf<N, T>; <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOf<N, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L119)

Since v3.3.0