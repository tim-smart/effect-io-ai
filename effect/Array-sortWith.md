Package: `effect`<br />
Module: `Array`<br />

## Array.sortWith

Sorts an array based on a provided mapping function and order. The mapping
function transforms the elements into a value that can be compared, and the
order defines how those values should be sorted.

**Example**

```ts
import { Array, Order } from "effect"

const result = Array.sortWith(["aaa", "b", "cc"], (s) => s.length, Order.number)
console.log(result) // ["b", "cc", "aaa"]

// Explanation:
// The array of strings is sorted based on their lengths. The mapping function `(s) => s.length`
// converts each string into its length, and the `Order.number` specifies that the lengths should
// be sorted in ascending order.
```

**Signature**

```ts
declare const sortWith: { <S extends Iterable<any>, B>(f: (a: ReadonlyArray.Infer<S>) => B, order: Order.Order<B>): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B, O: Order.Order<B>): NonEmptyArray<A>; <A, B>(self: Iterable<A>, f: (a: A) => B, order: Order.Order<B>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1360)

Since v2.0.0