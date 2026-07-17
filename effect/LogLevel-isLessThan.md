Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.isLessThan

Determines if the first log level is less severe than the second.

**When to use**

Use to check whether one log level is strictly less severe than another.

**Details**

Returns `true` if `self` represents a less severe level than `that`.

**Example** (Checking lower severity)

```ts
import { LogLevel } from "effect"

// Check if Debug is less severe than Info
console.log(LogLevel.isLessThan("Debug", "Info")) // true
console.log(LogLevel.isLessThan("Error", "Info")) // false

// Filter out verbose logs
const isFatalVerbose = LogLevel.isLessThan("Fatal", "Info")
const isErrorVerbose = LogLevel.isLessThan("Error", "Info")
const isTraceVerbose = LogLevel.isLessThan("Trace", "Info")
console.log(isFatalVerbose) // false (Fatal is not verbose)
console.log(isErrorVerbose) // false (Error is not verbose)
console.log(isTraceVerbose) // true (Trace is verbose)

// Curried usage
const isLessSevereThanError = LogLevel.isLessThan("Error")
console.log(isLessSevereThanError("Info")) // true
console.log(isLessSevereThanError("Fatal")) // false
```

**Signature**

```ts
declare const isLessThan: { (that: LogLevel): (self: LogLevel) => boolean; (self: LogLevel, that: LogLevel): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LogLevel.ts#L324)

Since v4.0.0