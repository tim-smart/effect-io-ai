# modify

Apply a function to the element at the specified index, creating a new `Array`,
or return a copy of the input if the index is out of bounds.

To import and use `modify` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modify
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.modify(numbers, 2, (n) => n * 2)
assert.deepStrictEqual(result, [1, 2, 6, 4])
```

**Signature**

```ts
export declare const modify: {
  <A, B, S extends Iterable<A> = Iterable<A>>(
    i: number,
    f: (a: ReadonlyArray.Infer<S>) => B
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>
  <A, B, S extends Iterable<A> = Iterable<A>>(
    self: S,
    i: number,
    f: (a: ReadonlyArray.Infer<S>) => B
  ): ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>
}
```
