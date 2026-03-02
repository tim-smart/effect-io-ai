Package: `effect`<br />
Module: `Logger`<br />

## Logger.consoleLogFmt

A `Logger` which outputs logs using the [logfmt](https://brandur.org/logfmt)
style and writes them to the console.

For example:
```
timestamp=2025-01-03T14:22:47.570Z level=INFO fiber=#1 message=info
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the console logfmt logger
const logfmtProgram = Effect.log("Hello LogFmt Console").pipe(
  Effect.provide(Logger.layer([Logger.consoleLogFmt]))
)

// Great for production environments
const productionProgram = Effect.gen(function*() {
  yield* Effect.log("Server started", { port: 8080, version: "1.0.0" })
  yield* Effect.logInfo("Request processed", { userId: 123, duration: 45 })
  yield* Effect.logError("Validation failed", {
    field: "email",
    value: "invalid"
  })
}).pipe(
  Effect.annotateLogs("service", "api"),
  Effect.withLogSpan("request-handler"),
  Effect.provide(Logger.layer([Logger.consoleLogFmt]))
)

// Combine with other loggers
const multiLoggerLive = Logger.layer([
  Logger.consoleLogFmt,
  Logger.consolePretty()
])
```

**Signature**

```ts
declare const consoleLogFmt: Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L941)

Since v2.0.0