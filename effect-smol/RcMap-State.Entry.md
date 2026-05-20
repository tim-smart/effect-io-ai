Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Entry

Represents an individual entry in the RcMap, containing the resource's
metadata including reference count, expiration time, and lifecycle management.

**Signature**

```ts
export interface Entry<A, E> {
    readonly deferred: Deferred.Deferred<A, E>
    readonly scope: Scope.Closeable
    readonly finalizer: Effect.Effect<void>
    readonly idleTimeToLive: Duration.Duration
    fiber: Fiber.Fiber<void> | undefined
    expiresAt: number
    refCount: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L128)

Since v4.0.0