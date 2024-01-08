# tuple

Similar to `Promise.all` but operates on `Semigroup`s.

```
[Semigroup<A>, Semigroup<B>, ...] -> Semigroup<[A, B, ...]>
```

This function creates and returns a new `Semigroup` for a tuple of values based on the given `Semigroup`s for each element in the tuple.
The returned `Semigroup` combines two tuples of the same type by applying the corresponding `Semigroup` passed as arguments to each element in the tuple.

It is useful when you need to combine two tuples of the same type and you have a specific way of combining each element of the tuple.

To import and use `tuple` from the "Semigroup" module:

```ts
import * as Semigroup from "@effect/typeclass/Semigroup"
// Can be accessed like this
Semigroup.tuple
```

**Signature**

```ts
export declare const tuple: <T extends readonly Semigroup<any>[]>(
  ...elements: T
) => Semigroup<{ readonly [I in keyof T]: [T[I]] extends [Semigroup<infer A>] ? A : never }>
```
