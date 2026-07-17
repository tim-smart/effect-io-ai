Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.makeWith

Creates a `ScopedCache` from a lookup function, maximum capacity, and a
time-to-live function computed from each lookup exit and key.

**When to use**

Use when you need a scoped cache whose entry lifetime depends on each lookup
result or key.

**Details**

The cache must be constructed in a `Scope`. Each lookup runs in its own entry
scope, and that scope is closed when the entry expires, is invalidated, is
evicted by capacity, or when the cache's owning scope closes.
`requireServicesAt` controls whether lookup services are captured at
construction time or required when lookup operations run.

**See**

- `make` for creating a scoped cache with one fixed time-to-live

**Signature**

```ts
declare const makeWith: <Key, A, E = never, R = never, ServiceMode extends "lookup" | "construction" = never>(options: { readonly lookup: (key: Key) => Effect.Effect<A, E, R | Scope.Scope>; readonly capacity: number; readonly timeToLive?: ((exit: Exit.Exit<A, E>, key: Key) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<ScopedCache<Key, A, E, "lookup" extends ServiceMode ? Exclude<R, Scope.Scope> : never>, never, ("lookup" extends ServiceMode ? never : R) | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L132)

Since v2.0.0