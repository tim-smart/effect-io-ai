# modifyOption

Apply a function to the element at the specified index, creating a new `Array`,
or return `None` if the index is out of bounds.

To import and use `modifyOption` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modifyOption
```

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.modifyOption(numbers, 2, (n) => n * 2)
assert.deepStrictEqual(result, Option.some([1, 2, 6, 4]))

const outOfBoundsResult = Array.modifyOption(numbers, 5, (n) => n * 2)
assert.deepStrictEqual(outOfBoundsResult, Option.none())
```

**Signature**

```ts
export declare const modifyOption: {
  <A, B, S extends Iterable<A> = Iterable<A>>(
    i: number,
    f: (a: ReadonlyArray.Infer<S>) => B
  ): (self: S) => Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>
  <A, B, S extends Iterable<A> = Iterable<A>>(
    self: S,
    i: number,
    f: (a: ReadonlyArray.Infer<S>) => B
  ): Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>
}
```
