## option

Returns an optional version of this config, which will be `None` if the
data is missing from configuration, and `Some` otherwise.

**Signature**

```ts
declare const option: <A>(self: Config<A>) => Config<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L320)

Since v2.0.0