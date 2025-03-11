## makeRuntimePromise

Create an Effect run function that is backed by a FiberSet.

**Signature**

```ts
declare const makeRuntimePromise: <R = never, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: Runtime.RunForkOptions | undefined) => Promise<XA>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L157)

Since v3.13.0