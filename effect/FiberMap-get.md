## get

Retrieve a fiber from the FiberMap.

**Signature**

```ts
declare const get: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<Fiber.RuntimeFiber<A, E>, NoSuchElementException>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<Fiber.RuntimeFiber<A, E>, NoSuchElementException>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L344)

Since v2.0.0