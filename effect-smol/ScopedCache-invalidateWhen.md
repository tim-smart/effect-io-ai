Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidateWhen

Conditionally invalidates the entry associated with the specified key in the cache
if the predicate returns true for the cached value.

**When to use**

Use to remove an already-cached scoped value only when the successful cached
value satisfies a predicate.

**Details**

Returns `true` only when a successful cached value matches and is removed. It
returns `false` for absent, expired, failed, or non-matching entries.

**Gotchas**

A matching invalidation closes the entry scope and releases its resources.

**See**

- `invalidate` for unconditional removal by key

**Signature**

```ts
declare const invalidateWhen: { <Key, A>(key: Key, f: Predicate.Predicate<A>): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key, f: Predicate.Predicate<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L589)

Since v4.0.0