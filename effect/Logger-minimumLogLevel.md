# minimumLogLevel

Sets the minimum log level for logging operations, allowing control over
which log messages are displayed based on their severity.

To import and use `minimumLogLevel` from the "Logger" module:

ts
import \* as Logger from "effect/Logger"
// Can be accessed like this
Logger.minimumLogLevel
undefined

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.log("Executing task...")
  yield* Effect.sleep("100 millis")
  console.log("task done")
})

// Logging disabled using a layer
// Effect.runFork(program.pipe(Effect.provide(Logger.minimumLogLevel(LogLevel.None))))
// task done
```

**Signature**

```ts
export declare const minimumLogLevel: (level: LogLevel.LogLevel) => Layer.Layer<never>
```
