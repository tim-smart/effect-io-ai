Package: `effect`<br />
Module: `Cache`<br />

## Cache.getSuccess

Retrieves the value associated with the specified key from the cache, only if
it contains a resolved successful value.

**Signature**

```ts
declare const getSuccess: { <Key, A, R>(key: Key): <E>(self: Cache<Key, A, E, R>) => Effect.Effect<Option.Option<A>>; <Key, A, E, R>(self: Cache<Key, A, E, R>, key: Key): Effect.Effect<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L560)

Since v4.0.0