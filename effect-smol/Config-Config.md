Package: `effect`<br />
Module: `Config`<br />

## Config.Config

A recipe for extracting a typed value `T` from a `ConfigProvider`.

**When to use**

Use to describe typed configuration that can be parsed from a provider or
yielded inside `Effect.gen`.

**Details**

Key members:
- `parse(provider, pathPrefix?)` – runs the config against a specific provider.
  The optional path prefix is the logical scope accumulated from outer
  `Config.nested` calls.
- Yieldable – can be yielded inside `Effect.gen`, which automatically
  resolves the current `ConfigProvider` from the context.
- Pipeable – supports `.pipe(Config.map(...))` etc.

**See**

- `schema` – the main way to create a Config

**Signature**

```ts
export interface Config<out T> extends Effect.Effect<T, ConfigError> {
  readonly [TypeId]: typeof TypeId
  readonly parse: (
    provider: ConfigProvider.ConfigProvider,
    pathPrefix?: Path
  ) => Effect.Effect<T, ConfigError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L108)

Since v2.0.0