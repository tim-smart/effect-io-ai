Package: `effect`<br />
Module: `References`<br />

## References.CurrentLogLevel

Context reference for the current log severity used by `Effect.log` when no explicit
level is provided.

**When to use**

Use to set the default severity for `Effect.log` entries that do not provide
an explicit level.

**Details**

Use `MinimumLogLevel` to control which log entries are filtered out.

**Example** (Changing the current log level)

```ts
import { Console, Effect, References } from "effect"

const dynamicLogging = Effect.gen(function*() {
  // Get current log level (default is "Info")
  const current = yield* References.CurrentLogLevel
  console.log(current) // "Info"

  // Set log level to Debug for detailed logging
  yield* Effect.provideService(
    Effect.gen(function*() {
      const level = yield* References.CurrentLogLevel
      console.log(level) // "Debug"
      yield* Console.debug("This debug message will be shown")
    }),
    References.CurrentLogLevel,
    "Debug"
  )

  // Change to Error level to reduce noise
  yield* Effect.provideService(
    Effect.gen(function*() {
      const level = yield* References.CurrentLogLevel
      console.log(level) // "Error"
      yield* Console.info("This info message will be filtered out")
      yield* Console.error("This error message will be shown")
    }),
    References.CurrentLogLevel,
    "Error"
  )
})
```

**Signature**

```ts
declare const CurrentLogLevel: Context.Reference<Severity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/References.ts#L287)

Since v4.0.0