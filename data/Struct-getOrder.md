# getOrder

This function creates and returns a new `Order` for a struct of values based on the given `Order`s
for each property in the struct.

Alias of {@link order.struct}.

Part of the `Struct` module, imported from `@effect/data/Struct`.

**Signature**

```ts
export declare const getOrder: <R extends { readonly [x: string]: order.Order<any> }>(
  fields: R
) => order.Order<{ [K in keyof R]: [R[K]] extends [order.Order<infer A>] ? A : never }>
```
