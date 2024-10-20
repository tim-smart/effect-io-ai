# prepend

Prepend an element to the front of an `Iterable`, creating a new `NonEmptyArray`.

To import and use `prepend` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.prepend
```

**Example**

```ts
import { Array } from "effect"

const original = [2, 3, 4]
const result = Array.prepend(original, 1)
assert.deepStrictEqual(result, [1, 2, 3, 4])
```

**Signature**

```ts
export declare const prepend: {
  <B>(head: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B>
  <A, B>(self: Iterable<A>, head: B): NonEmptyArray<A | B>
}
```
