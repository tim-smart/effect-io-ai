Package: `effect`<br />
Module: `References`<br />

## References.CurrentLogLevel

Reference for controlling the current log level for dynamic filtering.

**Example**

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
declare const CurrentLogLevel: ServiceMap.Reference<Severity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L459)

Since v4.0.0