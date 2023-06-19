# makeFlat

Creates a new flat config provider.

Part of the `Provider` module, imported from `@effect/io/Config/Provider`.

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
