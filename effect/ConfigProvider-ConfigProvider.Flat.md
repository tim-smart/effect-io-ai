## ConfigProvider.Flat

A simplified config provider that knows only how to deal with flat
(key/value) properties. Because these providers are common, there is
special support for implementing them.

**Signature**

```ts
export interface Flat {
    readonly [FlatConfigProviderTypeId]: FlatConfigProviderTypeId
    readonly patch: PathPatch.PathPatch
    load<A>(
      path: ReadonlyArray<string>,
      config: Config.Config.Primitive<A>,
      split?: boolean
    ): Effect.Effect<Array<A>, ConfigError.ConfigError>
    enumerateChildren(
      path: ReadonlyArray<string>
    ): Effect.Effect<HashSet.HashSet<string>, ConfigError.ConfigError>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L77)

Since v2.0.0