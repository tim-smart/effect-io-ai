Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.layer

Installs a `ConfigProvider` as the active provider for all downstream
effects, replacing any previously installed provider.

When to use:
- Setting the config source for an entire application or test suite.

Accepts either a plain `ConfigProvider` or an `Effect` that produces one.
When given an Effect, it is evaluated once when the layer is built.

**Example** (Using a JSON object as the config source)

```ts
import { Config, ConfigProvider, Effect, Layer } from "effect"

const TestLayer = ConfigProvider.layer(
  ConfigProvider.fromUnknown({ port: 8080 })
)

const program = Effect.gen(function*() {
  const port = yield* Config.number("port")
  return port
})

// Effect.runSync(Effect.provide(program, TestLayer)) // 8080
```

**See**

- `layerAdd` – add a provider without replacing the existing one

**Signature**

```ts
declare const layer: <E = never, R = never>(self: ConfigProvider | Effect.Effect<ConfigProvider, E, R>) => Layer.Layer<never, E, Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L621)

Since v4.0.0