Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.Entry

A single scoped cache entry.

**When to use**

Use when inspecting the open state of a `ScopedCache` and you need the stored
deferred result, entry scope, or expiration timestamp for a key.

**Details**

The entry contains the deferred lookup result shared by readers, the scope
that owns resources acquired while computing the value, and an optional
expiration time in milliseconds. Removing the entry closes its scope.

**See**

- `State` for the open/closed cache state that stores entries by key

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
  readonly scope: Scope.Closeable
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L104)

Since v4.0.0