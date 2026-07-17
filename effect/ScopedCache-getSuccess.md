Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.getSuccess

Retrieves the value associated with the specified key from the cache, only if
it contains a resolved successful value.

**When to use**

Use to inspect an already-completed successful scoped cache entry without
running or awaiting the lookup effect.

**Details**

Returns `Option.some` for a resolved successful entry. Returns `Option.none`
for missing, expired, failed, or still-pending entries.

**See**

- `get` for awaiting or starting the lookup effect
- `getOption` for awaiting an already-cached entry without starting a lookup

**Signature**

```ts
declare const getSuccess: { <Key, A, R>(key: Key): <E>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Option.Option<A>>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L405)

Since v4.0.0