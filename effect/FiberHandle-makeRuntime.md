## makeRuntime

Create an Effect run function that is backed by a FiberHandle.

**Signature**

```ts
declare const makeRuntime: <R, E = unknown, A = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined; }) | undefined) => Fiber.RuntimeFiber<XA, XE>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L133)

Since v2.0.0