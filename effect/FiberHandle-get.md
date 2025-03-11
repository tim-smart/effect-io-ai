## get

Retrieve the fiber from the FiberHandle.

**Signature**

```ts
declare const get: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<Fiber.RuntimeFiber<A, E>, NoSuchElementException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L303)

Since v2.0.0