# rotate

Rotate an `Iterable` by `n` steps.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `rotate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.rotate
```

**Example**

```ts
import { Array } from "effect"

const letters = ["a", "b", "c", "d"]
const result = Array.rotate(letters, 2)
assert.deepStrictEqual(result, ["c", "d", "a", "b"])
```

**Signature**

```ts
export declare const rotate: {
  (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A>(self: readonly [A, ...A[]], n: number): [A, ...A[]]
  <A>(self: Iterable<A>, n: number): A[]
}
```
