# make

Creates a new config provider.

To import and use `make` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.make
```

**Signature**

```ts
export declare const make: (options: {
  readonly load: <A>(config: Config.Config<A>) => Effect.Effect<never, ConfigError.ConfigError, A>
  readonly flattened: ConfigProvider.Flat
}) => ConfigProvider
```
