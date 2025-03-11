## failCauseSync

Fails the `Deferred` with the specified `Cause`, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const failCauseSync: { <E>(evaluate: LazyArg<Cause.Cause<E>>): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<Cause.Cause<E>>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L193)

Since v2.0.0