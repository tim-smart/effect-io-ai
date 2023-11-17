# makeFlat

Creates a new flat config provider.

To import and use `makeFlat` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.makeFlat
```

**Signature**

```ts
export declare const makeFlat: (options: {
  readonly load: <A>(
    path: ReadonlyArray<string>,
    config: Config.Config.Primitive<A>,
    split: boolean
  ) => Effect.Effect<never, ConfigError.ConfigError, readonly A[]>
  readonly enumerateChildren: (
    path: ReadonlyArray<string>
  ) => Effect.Effect<never, ConfigError.ConfigError, HashSet.HashSet<string>>
  readonly patch: PathPatch.PathPatch
}) => ConfigProvider.Flat
```
