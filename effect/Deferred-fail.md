Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.fail

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Signature**

```ts
declare const fail: { <E>(error: E): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, error: E): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L157)

Since v2.0.0