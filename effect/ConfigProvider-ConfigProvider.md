Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.ConfigProvider

A ConfigProvider is a service that provides configuration given a description
of the structure of that configuration.

**Signature**

```ts
export interface ConfigProvider extends ConfigProvider.Proto, Pipeable {
  /**
   * Loads the specified configuration, or fails with a config error.
   */
  load<A>(config: Config.Config<A>): Effect.Effect<A, ConfigError.ConfigError>
  /**
   * Flattens this config provider into a simplified config provider that knows
   * only how to deal with flat (key/value) properties.
   */
  readonly flattened: ConfigProvider.Flat
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L45)

Since v2.0.0