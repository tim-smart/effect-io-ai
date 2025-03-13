Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

**Signature**

```ts
declare const make: <Key, Value, Error = never, Environment = never>(options: { readonly lookup: Lookup<Key, Value, Error, Environment>; readonly capacity: number; readonly timeToLive: Duration.DurationInput; }) => Effect.Effect<ScopedCache<Key, Value, Error>, never, Scope.Scope | Environment>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L119)

Since v2.0.0