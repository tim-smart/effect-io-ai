# struct

This function creates and returns a new `Order` for a struct of values based on the given `Order`s
for each property in the struct.

Part of the `Order` module, imported from `@effect/data/typeclass/Order`.

**Signature**

```ts
export declare const struct: <R extends { readonly [x: string]: Order<any> }>(
  fields: R
) => Order<{ [K in keyof R]: [R[K]] extends [Order<infer A>] ? A : never }>
```
