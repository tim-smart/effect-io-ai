Package: `effect`<br />
Module: `Logger`<br />

## Logger.formatJson

A `Logger` which outputs logs using a structured format serialized as JSON
on a single line.

**Details**

For example, a JSON entry can render as `{"message":["hello"],"level":"INFO",
"timestamp":"2025-01-03T14:28:57.508Z","annotations":{"key":"value"},
"spans":{"label":0},"fiberId":"#1"}`.

**Example** (Formatting logs as JSON)

```ts
import { Effect, Logger } from "effect"

// Use the JSON format logger
const jsonLoggerProgram = Effect.log("Hello JSON Format").pipe(
  Effect.provide(Logger.layer([Logger.formatJson]))
)

// Perfect for log aggregation and processing systems
const productionProgram = Effect.gen(function*() {
  yield* Effect.log("Server started", { port: 3000, env: "production" })
  yield* Effect.logInfo("Request received", {
    method: "GET",
    path: "/api/users"
  })
  yield* Effect.logError("Database error", { error: "Connection timeout" })
}).pipe(
  Effect.annotateLogs("service", "api-server"),
  Effect.withLogSpan("request-processing"),
  Effect.provide(Logger.layer([Logger.formatJson]))
)

// Adapt the JSON string before giving it to an output sink
const envelopedJsonLogger = Logger.map(
  Logger.formatJson,
  (jsonString) => `{"service":"api-server","entry":${jsonString}}`
)

const envelopedConsoleLogger = Logger.withConsoleLog(envelopedJsonLogger)
```

**Signature**

```ts
declare const formatJson: Logger<unknown, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L709)

Since v4.0.0