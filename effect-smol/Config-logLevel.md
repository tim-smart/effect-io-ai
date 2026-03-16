Package: `effect`<br />
Module: `Config`<br />

## Config.logLevel

Creates a config for a log level string.

Shortcut for `Config.schema(Config.LogLevel, name)`.

Accepted values: `"All"`, `"Fatal"`, `"Error"`, `"Warn"`, `"Info"`,
`"Debug"`, `"Trace"`, `"None"`.

**Example** (Reading a log level)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const logLevel = yield* Config.logLevel("LOG_LEVEL")
  console.log(logLevel)
})

const provider = ConfigProvider.fromEnv({
  env: {
    LOG_LEVEL: "Info"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output: "Info"
```

**Signature**

```ts
declare const logLevel: (name?: string) => Config<LogLevel_.LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1129)

Since v4.0.0