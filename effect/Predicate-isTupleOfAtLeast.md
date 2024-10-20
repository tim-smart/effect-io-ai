# isTupleOfAtLeast

Determine if an `Array` is a tuple with at least `N` elements, narrowing down the type to `TupleOfAtLeast`.

An `Array` is considered to be a `TupleOfAtLeast` if its length is at least `N`.

To import and use `isTupleOfAtLeast` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isTupleOfAtLeast
```

**Example**

```ts
import { isTupleOfAtLeast } from "effect/Predicate"

assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 3), true)
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 2), true)
assert.deepStrictEqual(isTupleOfAtLeast([1, 2, 3], 4), false)

const arr: number[] = [1, 2, 3, 4]
if (isTupleOfAtLeast(arr, 3)) {
  console.log(arr)
  // ^? [number, number, number, ...number[]]
}
```

**Signature**

```ts
export declare const isTupleOfAtLeast: {
  <N extends number>(n: N): <T>(self: ReadonlyArray<T>) => self is TupleOfAtLeast<N, T>
  <T, N extends number>(self: ReadonlyArray<T>, n: N): self is TupleOfAtLeast<N, T>
}
```
