## struct

This function creates and returns a new `Semigroup` for a struct of values based on the given `Semigroup`s for each property in the struct.
The returned `Semigroup` combines two structs of the same type by applying the corresponding `Semigroup` passed as arguments to each property in the struct.

It is useful when you need to combine two structs of the same type and you have a specific way of combining each property of the struct.

**Signature**

```ts
declare const struct: <R extends { readonly [x: string]: Semigroup<any>; }>(fields: R) => Semigroup<{ readonly [K in keyof R]: [R[K]] extends [Semigroup<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Semigroup.ts#L236)

Since v0.24.0