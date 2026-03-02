Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Entry

Represents an individual entry in the RcMap, containing the resource's
metadata including reference count, expiration time, and lifecycle management.

**Example**

```ts
import type { RcMap } from "effect"

// Entry contains all metadata for a resource in the map
declare const entry: RcMap.State.Entry<string, never>

// Entry properties:
// - deferred: Promise-like structure for the resource value
// - scope: Manages the resource's lifecycle
// - finalizer: Effect to run when cleaning up
// - fiber: Optional background fiber for expiration
// - expiresAt: Timestamp when resource expires
// - refCount: Number of active references

console.log(`Reference count: ${entry.refCount}`)
console.log(`Expires at: ${entry.expiresAt}`)
```

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L186)

Since v4.0.0