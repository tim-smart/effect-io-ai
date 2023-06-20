# makeFlat

Creates a new flat config provider.

To import and use `makeFlat` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.makeFlat
```

**Signature**

```ts
export declare const makeFlat: (
  load: <A>(
    path: Array<string>,
    config: Config.Config.Primitive<A>
  ) => Effect.Effect<never, ConfigError.ConfigError, A[]>,
  enumerateChildren: (path: Array<string>) => Effect.Effect<never, ConfigError.ConfigError, HashSet.HashSet<string>>,
  patch: PathPatch.PathPatch
) => ConfigProvider.Flat
```
