Package: `effect`<br />
Module: `Array`<br />

## Array.sortWith

Sorts an array by a derived key using a mapping function and an `Order` for
that key.

**When to use**

Use when you need to sort values by a derived key, such as a string length or
object field, while keeping the original values.

**Details**

Equivalent to `sort(Order.mapInput(order, f))`, but more convenient.

**Example** (Sorting strings by length)

```ts
import { Array, Order } from "effect"

console.log(Array.sortWith(["aaa", "b", "cc"], (s) => s.length, Order.Number))
// ["b", "cc", "aaa"]
```

**See**

- `sort` for sorting with an `Order` that compares the elements directly
- `sortBy` for sorting with multiple `Order`s applied in sequence

**Signature**

```ts
declare const sortWith: { <S extends Iterable<any>, B>(f: (a: ReadonlyArray.Infer<S>) => B, order: Order.Order<B>): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B, O: Order.Order<B>): NonEmptyArray<A>; <A, B>(self: Iterable<A>, f: (a: A) => B, order: Order.Order<B>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2187)

Since v2.0.0