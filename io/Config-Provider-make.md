# make

Creates a new config provider.

Part of the `Provider` module, imported from `@effect/io/Config/Provider`.

**Signature**

```ts
export declare const make: (
  load: <A>(config: Config.Config<A>) => Effect.Effect<never, ConfigError.ConfigError, A>,
  flattened: ConfigProvider.Flat
) => ConfigProvider
```
