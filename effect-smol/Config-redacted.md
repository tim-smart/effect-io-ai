Package: `effect`<br />
Module: `Config`<br />

## Config.redacted

Creates a config for a redacted string value. The parsed result is wrapped
in a `Redacted` container that hides the value from logs and `toString`.

**When to use**

Use to read secret string settings that should not be exposed in logs or
string output.

**Details**

Shortcut for `Config.schema(Schema.Redacted(Schema.String), name)`.

**Example** (Reading a secret)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const apiKey = yield* Config.redacted("API_KEY")
  console.log(apiKey)
})

const provider = ConfigProvider.fromEnv({
  env: {
    API_KEY: "sk-1234567890abcdef"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output: <redacted>
```

**See**

- `string` for non-secret string settings

**Signature**

```ts
declare const redacted: (name?: string) => Config<Redacted<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1266)

Since v2.0.0