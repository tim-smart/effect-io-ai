Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.LogLevel

Represents every level used by Effect logging, including concrete message
severities and the `All` and `None` sentinel levels.

**When to use**

Use to type values that may be either concrete log message severities or
logging configuration sentinels.

**Details**

The levels are ordered from most severe to least severe:
- `All` - Special level that allows all messages
- `Fatal` - System is unusable, immediate attention required
- `Error` - Error conditions that should be investigated
- `Warn` - Warning conditions that may indicate problems
- `Info` - Informational messages about normal operation
- `Debug` - Debug information useful during development
- `Trace` - Very detailed trace information
- `None` - Special level that suppresses all messages

**Example** (Using log levels)

```ts
import { Effect } from "effect"

// Using log levels with Effect logging
const program = Effect.gen(function*() {
  yield* Effect.logFatal("System failure")
  yield* Effect.logError("Database error")
  yield* Effect.logWarning("High memory usage")
  yield* Effect.logInfo("User logged in")
  yield* Effect.logDebug("Processing request")
  yield* Effect.logTrace("Variable state")
})

// Type-safe log level variables
const errorLevel = "Error" // LogLevel
const debugLevel = "Debug" // LogLevel
```

**Signature**

```ts
type LogLevel = "All" | "Fatal" | "Error" | "Warn" | "Info" | "Debug" | "Trace" | "None"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L60)

Since v2.0.0