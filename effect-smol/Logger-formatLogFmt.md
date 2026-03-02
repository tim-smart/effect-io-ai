Package: `effect`<br />
Module: `Logger`<br />

## Logger.formatLogFmt

A `Logger` which outputs logs using the [logfmt](https://brandur.org/logfmt)
style.

For example:
```
timestamp=2025-01-03T14:22:47.570Z level=INFO fiber=#1 message=hello
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the logfmt format logger
const logfmtLoggerProgram = Effect.log("Hello LogFmt Format").pipe(
  Effect.provide(Logger.layer([Logger.formatLogFmt]))
)

// Perfect for structured logging systems
const structuredProgram = Effect.gen(function*() {
  yield* Effect.log("User login", { userId: 123, method: "OAuth" })
  yield* Effect.logInfo("Request processed", {
    duration: 45,
    status: "success"
  })
}).pipe(
  Effect.provide(Logger.layer([Logger.withConsoleLog(Logger.formatLogFmt)]))
)

// Good for log aggregation systems like Splunk, ELK
const productionLogger = Logger.formatLogFmt
```

**Signature**

```ts
declare const formatLogFmt: Logger<unknown, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L613)

Since v4.0.0