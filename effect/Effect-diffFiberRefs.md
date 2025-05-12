Package: `effect`<br />
Module: `Effect`<br />

## Effect.diffFiberRefs

Returns a new workflow that executes this one and captures the changes in
`FiberRef` values.

**Signature**

```ts
declare const diffFiberRefs: <A, E, R>(self: Effect<A, E, R>) => Effect<[FiberRefsPatch.FiberRefsPatch, A], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6162)

Since v2.0.0