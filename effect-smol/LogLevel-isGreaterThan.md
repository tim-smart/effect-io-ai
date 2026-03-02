Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.isGreaterThan

Determines if the first log level is more severe than the second.

Returns `true` if `self` represents a more severe level than `that`.
This is useful for filtering logs based on minimum severity requirements.

**Example**

```ts
import { LogLevel } from "effect"

// Check if Error is more severe than Info
console.log(LogLevel.isGreaterThan("Error", "Info")) // true
console.log(LogLevel.isGreaterThan("Debug", "Error")) // false

// Use with filtering
const isFatal = LogLevel.isGreaterThan("Fatal", "Warn")
const isError = LogLevel.isGreaterThan("Error", "Warn")
const isDebug = LogLevel.isGreaterThan("Debug", "Warn")
console.log(isFatal) // true
console.log(isError) // true
console.log(isDebug) // false

// Curried usage
const isMoreSevereThanInfo = LogLevel.isGreaterThan("Info")
console.log(isMoreSevereThanInfo("Error")) // true
console.log(isMoreSevereThanInfo("Debug")) // false
```

**Signature**

```ts
declare const isGreaterThan: { (that: LogLevel): (self: LogLevel) => boolean; (self: LogLevel, that: LogLevel): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L233)

Since v2.0.0