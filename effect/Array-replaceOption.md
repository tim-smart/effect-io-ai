# replaceOption

Replaces an element in an array with the given value, returning an option of the updated array.

To import and use `replaceOption` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.replaceOption
```

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 2, 3]
const result = Array.replaceOption(numbers, 1, 4)
assert.deepStrictEqual(result, Option.some([1, 4, 3]))
```

**Signature**

```ts
export declare const replaceOption: {
  <B>(
    i: number,
    b: B
  ): <A, S extends Iterable<A> = Iterable<A>>(self: S) => Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>
  <A, B, S extends Iterable<A> = Iterable<A>>(
    self: S,
    i: number,
    b: B
  ): Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>
}
```
