Package: `effect`<br />
Module: `Config`<br />

## Config.duration

Creates a config for a `Duration` value parsed from a human-readable
string.

Shortcut for `Config.schema(Schema.DurationFromString, name)`.

Accepts any string that `Duration.fromInput` can parse (e.g.
`"10 seconds"`, `"500 millis"`, `"Infinity"`, `"-Infinity"`).

**Example** (Reading a duration)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const duration = yield* Config.duration("DURATION")
  console.log(duration)
})

const provider = ConfigProvider.fromEnv({
  env: {
    DURATION: "10 seconds"
  }
})

Effect.runSync(
  program.pipe(Effect.provideService(ConfigProvider.ConfigProvider, provider))
)
// Output: Duration { _tag: "millis", value: 10000 }
```

**Signature**

```ts
declare const duration: (name?: string) => Config<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1055)

Since v4.0.0