Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Entry

Represents an individual entry in the RcMap, containing the resource's
metadata including reference count, expiration time, and lifecycle management.

**When to use**

Use when inspecting the stored resource, reference count, and idle lifecycle
metadata for a single key.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L156)

Since v4.0.0