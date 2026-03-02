Package: `effect`<br />
Module: `Logger`<br />

## Logger.consoleStructured

A `Logger` which outputs logs using a strctured format and writes them to
the console.

For example:
```
{
  message: [ 'info', 'message' ],
  level: 'INFO',
  timestamp: '2025-01-03T14:25:39.666Z',
  annotations: { key: 'value' },
  spans: { label: 0 },
  fiberId: '#1'
}
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the console structured logger
const structuredProgram = Effect.log("Hello Structured Console").pipe(
  Effect.provide(Logger.layer([Logger.consoleStructured]))
)

// Perfect for development debugging
const debugProgram = Effect.gen(function*() {
  yield* Effect.log("User event", {
    userId: 123,
    action: "login",
    ip: "192.168.1.1"
  })
  yield* Effect.logInfo("API call", {
    endpoint: "/users",
    method: "GET",
    duration: 120
  })
}).pipe(
  Effect.annotateLogs("requestId", "req-123"),
  Effect.withLogSpan("authentication"),
  Effect.provide(Logger.layer([Logger.consoleStructured]))
)

// Easy to parse and inspect object structure
const inspectionProgram = Effect.gen(function*() {
  yield* Effect.log("Complex data", {
    user: { id: 1, name: "John" },
    metadata: { source: "api", version: 2 }
  })
}).pipe(
  Effect.provide(Logger.layer([Logger.consoleStructured]))
)
```

**Signature**

```ts
declare const consoleStructured: Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L1000)

Since v4.0.0