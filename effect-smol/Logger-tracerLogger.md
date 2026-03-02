Package: `effect`<br />
Module: `Logger`<br />

## Logger.tracerLogger

A `Logger` which includes log messages as tracer span events.

This logger integrates logging with distributed tracing by recording
all log messages as events on the current trace span, making them visible
in tracing tools like OpenTelemetry, Jaeger, or Zipkin.

**Note**: This logger is included in the default set of loggers for all
Effect programs, so log messages automatically appear as span events unless
you override the default loggers.

**Example**

```ts
import { Effect, Logger } from "effect"

// Tracer logger is included by default - logs automatically become span events
const defaultProgram = Effect.gen(function*() {
  yield* Effect.log("This automatically becomes a span event")
  yield* Effect.logInfo("Processing data")
})

// Explicitly combine tracer logger with other loggers
const observabilityProgram = Effect.gen(function*() {
  yield* Effect.log("Operation started")
  yield* Effect.logInfo("Processing data")
  yield* Effect.logError("Error occurred")
}).pipe(
  Effect.withLogSpan("data-processing"),
  Effect.provide(Logger.layer([
    Logger.tracerLogger,
    Logger.consoleJson
  ]))
)

// Perfect for correlating logs with traces in distributed systems
const distributedProgram = Effect.gen(function*() {
  yield* Effect.log("Step 1: Fetching user data")
  yield* Effect.sleep("100 millis")
  yield* Effect.log("Step 2: Processing payment")
  yield* Effect.sleep("200 millis")
  yield* Effect.log("Step 3: Sending confirmation")
}).pipe(
  Effect.withLogSpan("payment-workflow"),
  Effect.annotateLogs("userId", "user-123"),
  Effect.provide(Logger.layer([Logger.tracerLogger]))
)
```

**Signature**

```ts
declare const tracerLogger: Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L1110)

Since v4.0.0