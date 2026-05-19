Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.ScopedCache

A scoped cache whose values are acquired by a lookup effect and stored in
per-entry scopes.

Concurrent requests for the same key share the same in-flight lookup.
Entries can expire based on the lookup exit, are evicted when capacity is
exceeded, and release their entry scopes when invalidated, evicted, expired,
or when the cache's owning scope closes.

**Signature**

```ts
export interface ScopedCache<in out Key, in out A, in out E = never, out R = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  state: State<Key, A, E>
  readonly capacity: number
  readonly lookup: (key: Key) => Effect.Effect<A, E, R | Scope.Scope>
  readonly timeToLive: (exit: Exit.Exit<A, E>, key: Key) => Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L59)

Since v2.0.0