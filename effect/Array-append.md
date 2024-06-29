# append

Append an element to the end of an `Iterable`, creating a new `NonEmptyArray`.

To import and use `append` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.append
```

**Example**

```ts
import { Array } from "effect"

const original = [1, 2, 3]
const result = Array.append(original, 4)
assert.deepStrictEqual(result, [1, 2, 3, 4])
```

**Signature**

```ts
export declare const append: {
  <B>(last: B): <A>(self: Iterable<A>) => [B | A, ...(B | A)[]]
  <A, B>(self: Iterable<A>, last: B): [A | B, ...(A | B)[]]
}
```
