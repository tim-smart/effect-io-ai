Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.makeStoreRedis

Creates a Redis-backed `PersistedQueueStore`.

**Details**

The store uses Redis lists and hashes with worker locks, periodically
refreshes locks while items are being processed, and moves exhausted items
to a failed queue.

**Signature**

```ts
declare const makeStoreRedis: (options?: { readonly prefix?: string | undefined; readonly pollInterval?: Duration.Input | undefined; readonly lockRefreshInterval?: Duration.Input | undefined; readonly lockExpiration?: Duration.Input | undefined; } | undefined) => Effect.Effect<{ readonly offer: (options: { readonly name: string; readonly id: string; readonly element: unknown; readonly isCustomId: boolean; }) => Effect.Effect<void, PersistedQueueError>; readonly take: (options: { readonly name: string; readonly maxAttempts: number; }) => Effect.Effect<{ readonly id: string; readonly attempts: number; readonly element: unknown; }, PersistedQueueError, Scope.Scope>; }, never, Scope.Scope | Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PersistedQueue.ts#L363)

Since v4.0.0