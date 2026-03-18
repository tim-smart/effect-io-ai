Package: `effect`<br />
Module: `Config`<br />

## Config.boolean

Creates a config for a boolean value parsed from common string
representations.

Shortcut for `Config.schema(Config.Boolean, name)`.

Accepted values: `true`, `false`, `yes`, `no`, `on`, `off`, `1`, `0`,
`y`, `n`.

**Example** (Reading a boolean flag)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const flag = yield* Config.boolean("FEATURE_FLAG")
  console.log(flag)
})

const provider = ConfigProvider.fromEnv({
  env: {
    FEATURE_FLAG: "yes"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output: true
```

**Signature**

```ts
declare const boolean: (name?: string) => Config<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1025)

Since v4.0.0