## dieSync

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const dieSync: { (evaluate: LazyArg<unknown>): <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<unknown>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L217)

Since v2.0.0