# make

Creates a new config provider.

To import and use `make` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.make
```

**Signature**

```ts
export declare const make: (options: {
  readonly load: <A>(config: Config.Config<A>) => Effect.Effect<A, ConfigError.ConfigError>
  readonly flattened: ConfigProvider.Flat
}) => ConfigProvider
```
