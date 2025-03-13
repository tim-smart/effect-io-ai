Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.unsafeGet

Retrieve a fiber from the FiberMap.

**Signature**

```ts
declare const unsafeGet: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Option.Option<Fiber.RuntimeFiber<A, E>>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Option.Option<Fiber.RuntimeFiber<A, E>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L325)

Since v2.0.0