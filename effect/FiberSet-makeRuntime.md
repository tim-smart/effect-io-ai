## makeRuntime

Create an Effect run function that is backed by a FiberSet.

**Signature**

```ts
declare const makeRuntime: <R = never, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: Runtime.RunForkOptions | undefined) => Fiber.RuntimeFiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L138)

Since v2.0.0