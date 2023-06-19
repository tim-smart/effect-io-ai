# getMonoid

This function creates and returns a new `Monoid` for a struct of values based on the given `Monoid`s for each property in the struct.
The returned `Monoid` combines two structs of the same type by applying the corresponding `Monoid` passed as arguments to each property in the struct.

The `empty` value of the returned `Monoid` is a struct where each property is the `empty` value of the corresponding `Monoid` in the input `monoids` object.

It is useful when you need to combine two structs of the same type and you have a specific way of combining each property of the struct.

See also {@link getSemigroup}.

Part of the `Struct` module, imported from `@effect/data/Struct`.

**Signature**

```ts
export declare const getMonoid: <R extends { readonly [x: string]: monoid.Monoid<any> }>(
  fields: R
) => monoid.Monoid<{ [K in keyof R]: [R[K]] extends [monoid.Monoid<infer A>] ? A : never }>
```
