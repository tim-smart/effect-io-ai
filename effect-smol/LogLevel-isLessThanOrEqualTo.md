Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.isLessThanOrEqualTo

Determines if the first log level is less severe than or equal to the second.

Returns `true` if `self` represents a level that is less severe than or equal to `that`.
This is useful for implementing maximum log level filtering.

**Example**

```ts
import { Logger, LogLevel } from "effect"

// Check if level is at or below threshold
console.log(LogLevel.isLessThanOrEqualTo("Info", "Info")) // true
console.log(LogLevel.isLessThanOrEqualTo("Debug", "Info")) // true
console.log(LogLevel.isLessThanOrEqualTo("Error", "Info")) // false

// Create a logger that suppresses verbose logs
const quietLogger = Logger.make((options) => {
  if (LogLevel.isLessThanOrEqualTo(options.logLevel, "Info")) {
    console.log(`[${options.logLevel}] ${options.message}`)
  }
})

// Development logger - suppress trace logs
const devLogger = Logger.make((options) => {
  if (LogLevel.isLessThanOrEqualTo(options.logLevel, "Debug")) {
    console.log(`[${options.logLevel}] ${options.message}`)
  }
})

// Curried usage for filtering
const isInfoOrBelow = LogLevel.isLessThanOrEqualTo("Info")
const shouldLog = isInfoOrBelow("Debug") // true
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: LogLevel): (self: LogLevel) => boolean; (self: LogLevel, that: LogLevel): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L355)

Since v2.0.0