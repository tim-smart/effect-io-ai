Package: `effect`<br />
Module: `Logger`<br />

## Logger.formatStructured

A `Logger` which outputs logs using a structured format.

**Details**

For example, a structured entry can contain `message: [ "hello" ]`,
`level: "INFO"`, `timestamp: "2025-01-03T14:25:39.666Z"`,
`annotations: { key: "value" }`, `spans: { label: 0 }`, and
`fiberId: "#1"`.

**Example** (Formatting logs as structured objects)

```ts
import { Effect, Logger } from "effect"

// Use the structured format logger
const structuredLoggerProgram = Effect.log("Hello Structured Format").pipe(
  Effect.provide(Logger.layer([Logger.formatStructured]))
)

// Perfect for JSON processing and analytics
const analyticsProgram = Effect.gen(function*() {
  yield* Effect.log("User action", { action: "click", element: "button" })
  yield* Effect.logInfo("API call", { endpoint: "/users", duration: 150 })
}).pipe(
  Effect.annotateLogs("sessionId", "abc123"),
  Effect.withLogSpan("request"),
  Effect.provide(Logger.layer([Logger.formatStructured]))
)

// Process structured output
const processingLogger = Logger.map(Logger.formatStructured, (output) => {
  // Process the structured object
  const enhanced = { ...output, processed: true }
  return enhanced
})
```

**Signature**

```ts
declare const formatStructured: Logger<unknown, { readonly level: string; readonly fiberId: string; readonly timestamp: string; readonly message: unknown; readonly cause: string | undefined; readonly annotations: Record<string, unknown>; readonly spans: Record<string, number>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L687)

Since v4.0.0