Package: `effect`<br />
Module: `Cache`<br />

## Cache.Lookup

A `Lookup` represents a lookup function that, given a key of type `Key`, can
return an effect that will either produce a value of type `Value` or fail
with an error of type `Error` using an environment of type `Environment`.

**Signature**

```ts
type Lookup<Key, Value, Error, Environment> = (
  key: Key
) => Effect.Effect<Value, Error, Environment>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L279)

Since v2.0.0