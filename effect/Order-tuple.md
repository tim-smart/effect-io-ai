Package: `effect`<br />
Module: `Order`<br />

## Order.tuple

Similar to `Promise.all` but operates on `Order`s.

```
[Order<A>, Order<B>, ...] -> Order<[A, B, ...]>
```

This function creates and returns a new `Order` for a tuple of values based on the given `Order`s for each element in the tuple.
The returned `Order` compares two tuples of the same type by applying the corresponding `Order` to each element in the tuple.
It is useful when you need to compare two tuples of the same type and you have a specific way of comparing each element
of the tuple.

**Signature**

```ts
declare const tuple: <T extends ReadonlyArray<Order<any>>>(...elements: T) => Order<Readonly<{ [I in keyof T]: [T[I]] extends [Order<infer A>] ? A : never; }>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L208)

Since v2.0.0