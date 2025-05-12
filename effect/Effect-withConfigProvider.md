Package: `effect`<br />
Module: `Effect`<br />

## Effect.withConfigProvider

Executes an effect using a specific configuration provider.

**Details**

This function lets you run an effect with a specified configuration provider.
The custom provider will override the default configuration provider for the
duration of the effect's execution.

**When to Use**

This is particularly useful when you need to use a different set of
configuration values or sources for specific parts of your application.

**Example**

```ts
import { Config, ConfigProvider, Effect } from "effect"

const customProvider: ConfigProvider.ConfigProvider = ConfigProvider.fromMap(
  new Map([["custom-key", "custom-value"]])
)

const program = Effect.withConfigProvider(customProvider)(
  Effect.gen(function*() {
    const value = yield* Config.string("custom-key")
    console.log(`Config value: ${value}`)
  })
)

Effect.runPromise(program)
// Output:
// Config value: custom-value
```

**Signature**

```ts
declare const withConfigProvider: { (provider: ConfigProvider): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, provider: ConfigProvider): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7347)

Since v2.0.0