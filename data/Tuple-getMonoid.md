# getMonoid

This function creates and returns a new `Monoid` for a tuple of values based on the given `Monoid`s for each element in the tuple.
The returned `Monoid` combines two tuples of the same type by applying the corresponding `Monoid` passed as arguments to each element in the tuple.

The `empty` value of the returned `Monoid` is the tuple of `empty` values of the input `Monoid`s.

It is useful when you need to combine two tuples of the same type and you have a specific way of combining each element of the tuple.

To import and use `getMonoid` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.getMonoid
```

**Signature**

```ts
export declare const getMonoid: <T extends readonly monoid.Monoid<any>[]>(
  ...elements: T
) => monoid.Monoid<{ readonly [I in keyof T]: [T[I]] extends [monoid.Monoid<infer A>] ? A : never }>
```
