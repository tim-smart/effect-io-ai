Package: `effect`<br />
Module: `References`<br />

## References.MinimumLogLevel

Reference for setting the minimum log level threshold. Log entries below this
level will be filtered out completely.

**Example**

```ts
import { Console, Effect, References } from "effect"

const configureMinimumLogging = Effect.gen(function*() {
  // Get current minimum level (default is "Info")
  const current = yield* References.MinimumLogLevel
  console.log(current) // "Info"

  // Set minimum level to Warn - Debug and Info will be filtered
  yield* Effect.provideService(
    Effect.gen(function*() {
      const minLevel = yield* References.MinimumLogLevel
      console.log(minLevel) // "Warn"

      // These won't be processed at all
      yield* Console.debug("Debug message") // Filtered out
      yield* Console.info("Info message") // Filtered out

      // These will be processed
      yield* Console.warn("Warning message") // Shown
      yield* Console.error("Error message") // Shown
    }),
    References.MinimumLogLevel,
    "Warn"
  )

  // Reset to default Info level
  yield* Effect.provideService(
    Effect.gen(function*() {
      const minLevel = yield* References.MinimumLogLevel
      console.log(minLevel) // "Info"

      // Now info messages will be processed
      yield* Console.info("Info message") // Shown
    }),
    References.MinimumLogLevel,
    "Info"
  )
})
```

**Signature**

```ts
declare const MinimumLogLevel: ServiceMap.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L508)

Since v4.0.0