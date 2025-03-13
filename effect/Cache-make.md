Package: `effect`<br />
Module: `Cache`<br />

## Cache.make

Constructs a new cache with the specified capacity, time to live, and
lookup function.

**Signature**

```ts
declare const make: <Key, Value, Error = never, Environment = never>(options: { readonly capacity: number; readonly timeToLive: Duration.DurationInput; readonly lookup: Lookup<Key, Value, Error, Environment>; }) => Effect.Effect<Cache<Key, Value, Error>, never, Environment>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L202)

Since v2.0.0