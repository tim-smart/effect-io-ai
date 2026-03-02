Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.isEnabled

Checks whether a given log level is enabled for the current fiber.

A log level is enabled when it is greater than or equal to
`References.MinimumLogLevel`.

**Example**

```ts
import { Effect, LogLevel, References } from "effect"

const program = Effect.gen(function*() {
  const debugEnabled = yield* LogLevel.isEnabled("Debug")
  const errorEnabled = yield* LogLevel.isEnabled("Error")

  console.log({ debugEnabled, errorEnabled })
})

const warnOnly = program.pipe(
  Effect.provideService(References.MinimumLogLevel, "Warn")
)
```

**Signature**

```ts
declare const isEnabled: (self: LogLevel) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L385)

Since v4.0.0