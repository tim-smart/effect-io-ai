## match

Folds over the `Fiber` or `RuntimeFiber`.

**Signature**

```ts
declare const match: { <A, E, Z>(options: { readonly onFiber: (fiber: Fiber<A, E>) => Z; readonly onRuntimeFiber: (fiber: RuntimeFiber<A, E>) => Z; }): (self: Fiber<A, E>) => Z; <A, E, Z>(self: Fiber<A, E>, options: { readonly onFiber: (fiber: Fiber<A, E>) => Z; readonly onRuntimeFiber: (fiber: RuntimeFiber<A, E>) => Z; }): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L579)

Since v2.0.0