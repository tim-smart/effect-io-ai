Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.isGreaterThanOrEqualTo

Determines if the first log level is more severe than or equal to the second.

Returns `true` if `self` represents a level that is more severe than or equal to `that`.
This is the most common function for implementing minimum log level filtering.

**Example**

```ts
import { Logger, LogLevel } from "effect"

// Check if level meets minimum threshold
console.log(LogLevel.isGreaterThanOrEqualTo("Error", "Error")) // true
console.log(LogLevel.isGreaterThanOrEqualTo("Error", "Info")) // true
console.log(LogLevel.isGreaterThanOrEqualTo("Debug", "Info")) // false

// Create a logger that only logs Info and above
const infoLogger = Logger.make((options) => {
  if (LogLevel.isGreaterThanOrEqualTo(options.logLevel, "Info")) {
    console.log(`[${options.logLevel}] ${options.message}`)
  }
})

// Production logger - only Error and Fatal
const productionLogger = Logger.make((options) => {
  if (LogLevel.isGreaterThanOrEqualTo(options.logLevel, "Error")) {
    console.error(
      `${options.date.toISOString()} [${options.logLevel}] ${options.message}`
    )
  }
})

// Curried usage for filtering
const isInfoOrAbove = LogLevel.isGreaterThanOrEqualTo("Info")
const shouldLog = isInfoOrAbove("Error") // true
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: LogLevel): (self: LogLevel) => boolean; (self: LogLevel, that: LogLevel): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L277)

Since v2.0.0