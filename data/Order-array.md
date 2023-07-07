# array

This function creates and returns a new `Order` for an array of values based on a given `Order` for the elements of the array.
The returned `Order` compares two arrays by applying the given `Order` to each element in the arrays.
If all elements are equal, the arrays are then compared based on their length.
It is useful when you need to compare two arrays of the same type and you have a specific way of comparing each element of the array.

To import and use `array` from the "Order" module:

```ts
import * as Order from '@effect/data/Order'

// Can be accessed like this
Order.array
```

**Signature**

```ts
export declare const array: <A>(O: Order<A>) => Order<readonly A[]>
```
