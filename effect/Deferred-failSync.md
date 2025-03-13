Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failSync

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const failSync: { <E>(evaluate: LazyArg<E>): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L169)

Since v2.0.0