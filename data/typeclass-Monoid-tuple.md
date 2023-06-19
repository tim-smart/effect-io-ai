# tuple

Similar to `Promise.all` but operates on `Monoid`s.

```
[Monoid<A>, Monoid<B>, ...] -> Monoid<[A, B, ...]>
```

This function creates and returns a new `Monoid` for a tuple of values based on the given `Monoid`s for each element in the tuple.
The returned `Monoid` combines two tuples of the same type by applying the corresponding `Monoid` passed as arguments to each element in the tuple.

The `empty` value of the returned `Monoid` is the tuple of `empty` values of the input `Monoid`s.

It is useful when you need to combine two tuples of the same type and you have a specific way of combining each element of the tuple.

Part of the `Monoid` module, imported from `@effect/data/typeclass/Monoid`.

**Signature**

```ts
export declare const tuple: <T extends readonly Monoid<any>[]>(
  ...elements: T
) => Monoid<{ readonly [I in keyof T]: [T[I]] extends [Monoid<infer A>] ? A : never }>
```
