Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.Entry

A single scoped cache entry.

The entry contains the deferred lookup result shared by readers, the scope
that owns resources acquired while computing the value, and an optional
expiration time in milliseconds. Removing the entry closes its scope.

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
  readonly scope: Scope.Closeable
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L94)

Since v4.0.0