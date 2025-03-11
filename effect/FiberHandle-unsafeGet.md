## unsafeGet

Retrieve the fiber from the FiberHandle.

**Signature**

```ts
declare const unsafeGet: <A, E>(self: FiberHandle<A, E>) => Option.Option<Fiber.RuntimeFiber<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L294)

Since v2.0.0