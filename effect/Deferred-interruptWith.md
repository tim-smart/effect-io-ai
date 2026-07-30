Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interruptWith

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the specified `FiberId`.

**Signature**

```ts
declare const interruptWith: { (fiberId: FiberId.FiberId): <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, fiberId: FiberId.FiberId): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L239)

Since v2.0.0