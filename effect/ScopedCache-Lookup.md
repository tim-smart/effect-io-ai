Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.Lookup

Similar to `Cache.Lookup`, but executes the lookup function within a `Scope`.

**Signature**

```ts
type Lookup<Key, Value, Error, Environment> = (
  key: Key
) => Effect.Effect<Value, Error, Environment | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L149)

Since v2.0.0