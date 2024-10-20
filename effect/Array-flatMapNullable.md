# flatMapNullable

Maps over an array and flattens the result, removing null and undefined values.

To import and use `flatMapNullable` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.flatMapNullable
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.flatMapNullable(numbers, (n) => (n % 2 === 0 ? null : n))
assert.deepStrictEqual(result, [1, 3])

// Explanation:
// The array of numbers [1, 2, 3] is mapped with a function that returns null for even numbers
// and the number itself for odd numbers. The resulting array [1, null, 3] is then flattened
// to remove null values, resulting in [1, 3].
```

**Signature**

```ts
export declare const flatMapNullable: {
  <A, B>(f: (a: A) => B | null | undefined): (self: ReadonlyArray<A>) => Array<NonNullable<B>>
  <A, B>(self: ReadonlyArray<A>, f: (a: A) => B | null | undefined): Array<NonNullable<B>>
}
```
