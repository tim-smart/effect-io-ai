Package: `effect`<br />
Module: `Config`<br />

## Config.Config

A recipe for extracting a typed value `T` from a `ConfigProvider`.

Key members:
- `parse(provider)` – runs the config against a specific provider,
  returning `Effect<T, ConfigError>`.
- Yieldable – can be yielded inside `Effect.gen`, which automatically
  resolves the current `ConfigProvider` from the context.
- Pipeable – supports `.pipe(Config.map(...))` etc.

**See**

- `schema` – the main way to create a Config
- `make` – low-level constructor

**Signature**

```ts
export interface Config<out T> extends Pipeable, Effect.Yieldable<Config<T>, T, ConfigError> {
  readonly [TypeId]: typeof TypeId
  readonly parse: (provider: ConfigProvider.ConfigProvider) => Effect.Effect<T, ConfigError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L162)

Since v4.0.0