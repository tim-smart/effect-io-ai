Package: `effect`<br />
Module: `Config`<br />

## Config.port

Creates a config for a port number (integer in 1–65535).

**When to use**

Use to read network port settings that must be valid port numbers.

**Details**

Shortcut for `Config.schema(Config.Port, name)`.

**Example** (Reading a port)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const port = yield* Config.port("PORT")
  console.log(port)
})

const provider = ConfigProvider.fromEnv({
  env: {
    PORT: "8080"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output: 8080
```

**See**

- `int` for integer config values outside the port range
- `Port` for the underlying port codec

**Signature**

```ts
declare const port: (name?: string) => Config<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1209)

Since v3.16.0