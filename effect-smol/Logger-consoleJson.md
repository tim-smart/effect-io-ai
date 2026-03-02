Package: `effect`<br />
Module: `Logger`<br />

## Logger.consoleJson

A `Logger` which outputs logs using a structured format serialized as JSON
on a single line and writes them to the console.

For example:
```
{"message":["hello"],"level":"INFO","timestamp":"2025-01-03T14:28:57.508Z","annotations":{"key":"value"},"spans":{"label":0},"fiberId":"#1"}
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the console JSON logger
const jsonProgram = Effect.log("Hello JSON Console").pipe(
  Effect.provide(Logger.layer([Logger.consoleJson]))
)

// Perfect for production logging and log aggregation
const productionProgram = Effect.gen(function*() {
  yield* Effect.log("Server started", { port: 3000, env: "production" })
  yield* Effect.logInfo("Request", {
    method: "POST",
    url: "/api/users",
    body: { name: "Alice" }
  })
  yield* Effect.logError("Database error", {
    error: "Connection timeout",
    retryCount: 3
  })
}).pipe(
  Effect.annotateLogs("service", "user-api"),
  Effect.annotateLogs("version", "1.2.3"),
  Effect.withLogSpan("request-processing"),
  Effect.provide(Logger.layer([Logger.consoleJson]))
)

// Easy to pipe to log aggregation services
const productionSetup = Logger.layer([
  Logger.consoleJson, // For stdout JSON logs
  Logger.consolePretty() // For local debugging
])

// Ideal for containerized environments (Docker, Kubernetes)
const containerProgram = Effect.log("Container ready", {
  containerId: "abc123",
  image: "myapp:latest"
}).pipe(
  Effect.provide(Logger.layer([Logger.consoleJson]))
)
```

**Signature**

```ts
declare const consoleJson: Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L1057)

Since v4.0.0