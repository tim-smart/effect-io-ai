# logWithLevel

Logs messages or error causes at a specified log level.

**Details**

This function allows you to log one or more messages or error causes while
specifying the desired log level (e.g., DEBUG, INFO, ERROR). It provides
flexibility in categorizing logs based on their importance or severity,
making it easier to filter logs during debugging or production monitoring.

To import and use `logWithLevel` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logWithLevel
```

**Example**

```ts
import { Cause, Effect, LogLevel } from "effect"

const program = Effect.logWithLevel(LogLevel.Error, "Critical error encountered", Cause.die("System failure!"))

// Effect.runFork(program)
// Output:
// timestamp=... level=ERROR fiber=#0 message=Critical error encountered cause="Error: System failure!"
```

**Signature**

```ts
export declare const logWithLevel: (level: LogLevel.LogLevel, ...message: ReadonlyArray<any>) => Effect<void>
```
