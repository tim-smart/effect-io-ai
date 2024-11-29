# sortWith

Sorts an array based on a provided mapping function and order. The mapping
function transforms the elements into a value that can be compared, and the
order defines how those values should be sorted.

To import and use `sortWith` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.sortWith
undefined

**Example**

```ts
import { Array, Order } from "effect"

const strings = ["aaa", "b", "cc"]
const result = Array.sortWith(strings, (s) => s.length, Order.number)
assert.deepStrictEqual(result, ["b", "cc", "aaa"])

// Explanation:
// The array of strings is sorted based on their lengths. The mapping function `(s) => s.length`
// converts each string into its length, and the `Order.number` specifies that the lengths should
// be sorted in ascending order.
```

**Signature**

```ts
export declare const sortWith: {
  <S extends Iterable<any> | NonEmptyReadonlyArray<any>, B>(
    f: (a: ReadonlyArray.Infer<S>) => B,
    order: Order.Order<B>
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B, O: Order.Order<B>): NonEmptyArray<A>
  <A, B>(self: Iterable<A>, f: (a: A) => B, order: Order.Order<B>): Array<A>
}
```
