## struct

This function creates and returns a new `Monoid` for a struct of values based on the given `Monoid`s for each property in the struct.
The returned `Monoid` combines two structs of the same type by applying the corresponding `Monoid` passed as arguments to each property in the struct.

The `empty` value of the returned `Monoid` is a struct where each property is the `empty` value of the corresponding `Monoid` in the input `monoids` object.

It is useful when you need to combine two structs of the same type and you have a specific way of combining each property of the struct.

**Signature**

```ts
declare const struct: <R extends { readonly [x: string]: Monoid<any>; }>(fields: R) => Monoid<{ readonly [K in keyof R]: [R[K]] extends [Monoid<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Monoid.ts#L101)

Since v0.24.0