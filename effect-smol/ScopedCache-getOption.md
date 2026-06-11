Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.getOption

Reads an existing unexpired cache entry without running the lookup function.

**When to use**

Use to read a scoped value only when it is already cached, without starting
the lookup for missing or expired keys.

**Details**

Returns `Option.none` when the key is absent or expired. If an entry exists,
the effect waits for its cached result and returns `Option.some(value)` on
success, or fails with the cached lookup error.

**See**

- `get` for running the lookup on missing or expired keys
- `getSuccess` for inspecting only already-completed successful entries

**Signature**

```ts
declare const getOption: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Option.Option<A>, E>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<Option.Option<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L343)

Since v4.0.0