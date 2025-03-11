## struct

This function creates and returns a new `Order` for a struct of values based on the given `Order`s
for each property in the struct.

**Signature**

```ts
declare const struct: <R extends { readonly [x: string]: Order<any>; }>(fields: R) => Order<{ [K in keyof R]: [R[K]] extends [Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L242)

Since v2.0.0