# getSemigroup

This function creates and returns a new `Semigroup` for a tuple of values based on the given `Semigroup`s for each element in the tuple.
The returned `Semigroup` combines two tuples of the same type by applying the corresponding `Semigroup` passed as arguments to each element in the tuple.

It is useful when you need to combine two tuples of the same type and you have a specific way of combining each element of the tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Signature**

```ts
export declare const getSemigroup: <T extends readonly semigroup.Semigroup<any>[]>(
  ...elements: T
) => semigroup.Semigroup<{ readonly [I in keyof T]: [T[I]] extends [semigroup.Semigroup<infer A>] ? A : never }>
```
