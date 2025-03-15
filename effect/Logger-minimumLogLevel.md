Package: `effect`<br />
Module: `Logger`<br />

## Logger.minimumLogLevel

Sets the minimum log level for logging operations, allowing control over
which log messages are displayed based on their severity.

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("Executing task...")
  yield* Effect.sleep("100 millis")
  console.log("task done")
})

// Logging disabled using a layer
Effect.runFork(program.pipe(Effect.provide(Logger.minimumLogLevel(LogLevel.None))))
// task done
```

**Signature**

```ts
declare const minimumLogLevel: (level: LogLevel.LogLevel) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L694)

Since v2.0.0