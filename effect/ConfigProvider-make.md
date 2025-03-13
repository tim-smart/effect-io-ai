Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.make

Creates a new config provider.

**Signature**

```ts
declare const make: (options: { readonly load: <A>(config: Config.Config<A>) => Effect.Effect<A, ConfigError.ConfigError>; readonly flattened: ConfigProvider.Flat; }) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L147)

Since v2.0.0