## makeFlat

Creates a new flat config provider.

**Signature**

```ts
declare const makeFlat: (options: { readonly load: <A>(path: ReadonlyArray<string>, config: Config.Config.Primitive<A>, split: boolean) => Effect.Effect<Array<A>, ConfigError.ConfigError>; readonly enumerateChildren: (path: ReadonlyArray<string>) => Effect.Effect<HashSet.HashSet<string>, ConfigError.ConfigError>; readonly patch: PathPatch.PathPatch; }) => ConfigProvider.Flat
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L160)

Since v2.0.0