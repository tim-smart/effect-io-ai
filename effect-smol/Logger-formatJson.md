Package: `effect`<br />
Module: `Logger`<br />

## Logger.formatJson

A `Logger` which outputs logs using a structured format serialized as JSON
on a single line.

For example:
```
{"message":["hello"],"level":"INFO","timestamp":"2025-01-03T14:28:57.508Z","annotations":{"key":"value"},"spans":{"label":0},"fiberId":"#1"}
```

**Example**

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

// Send to external logging service
const externalLogger = Logger.map(Logger.formatJson, (jsonString) => {
  // Send to Elasticsearch, CloudWatch, etc.
  console.log("Sending to external service:", jsonString)
  return jsonString
})
```

**Signature**

```ts
declare const formatJson: Logger<unknown, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L740)

Since v4.0.0