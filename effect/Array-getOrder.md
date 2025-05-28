Package: `effect`<br />
Module: `Array`<br />

## Array.getOrder

This function creates and returns a new `Order` for an array of values based on a given `Order` for the elements of the array.
The returned `Order` compares two arrays by applying the given `Order` to each element in the arrays.
If all elements are equal, the arrays are then compared based on their length.
It is useful when you need to compare two arrays of the same type and you have a specific way of comparing each element of the array.

**Signature**

```ts
declare const getOrder: <A>(O: Order.Order<A>) => Order.Order<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3060)

Since v2.0.0