# getOrder

This function creates and returns a new `Order` for a tuple of values based on the given `Order`s for each element in the tuple.
The returned `Order` compares two tuples of the same type by applying the corresponding `Order` to each element in the tuple.
It is useful when you need to compare two tuples of the same type and you have a specific way of comparing each element
of the tuple.

To import and use `getOrder` from the "Tuple" module:

```ts
import * as Tuple from 'effect/Tuple'

// Can be accessed like this
Tuple.getOrder
```

**Signature**

```ts
export declare const getOrder: <T extends readonly order.Order<any>[]>(
  ...elements: T
) => order.Order<{ [I in keyof T]: [T[I]] extends [order.Order<infer A>] ? A : never }>
```
