Package: `effect`<br />
Module: `Cache`<br />

## Cache.getSuccess

Retrieves the value associated with the specified key from the cache, only if
it contains a resolved successful value.

**Details**

This checks only an existing non-expired entry. It returns `Option.some` when
the entry has already resolved successfully, and `Option.none` for missing,
expired, failed, or still-pending entries.

**See**

- `get` for triggering or awaiting the cache lookup
- `getOption` for reading an existing entry as an optional effect

**Signature**

```ts
declare const getSuccess: { <Key, A, R>(key: Key): <E>(self: Cache<Key, A, E, R>) => Effect.Effect<Option.Option<A>>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L598)

Since v4.0.0