Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.make

Creates a `ScopedCache` with a fixed time-to-live for every lookup result.

This is the constant-TTL variant of `makeWith`: values are acquired by the
lookup effect in per-entry scopes, capacity can evict older entries, and
entry scopes are closed when entries expire, are invalidated, are evicted, or
when the cache's owning scope closes.

**Signature**

```ts
declare const make: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(options: { readonly lookup: (key: Key) => Effect.Effect<A, E, R | Scope.Scope>; readonly capacity: number; readonly timeToLive?: Duration.Input | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<ScopedCache<Key, A, E, "lookup" extends ServiceMode ? Exclude<R, Scope.Scope> : never>, never, ("lookup" extends ServiceMode ? never : R) | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L166)

Since v4.0.0