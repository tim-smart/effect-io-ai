Package: `effect`<br />
Module: `Struct`<br />

## Struct.getOrder

This function creates and returns a new `Order` for a struct of values based on the given `Order`s
for each property in the struct.

Alias of `order.struct`.

**Signature**

```ts
declare const getOrder: <R extends { readonly [x: string]: order.Order<any>; }>(fields: R) => order.Order<{ [K in keyof R]: [R[K]] extends [order.Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L127)

Since v2.0.0