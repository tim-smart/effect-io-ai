# logDebug

Logs messages at the DEBUG log level.

**Details**

This function logs messages at the DEBUG level, which is typically used for
diagnosing application behavior during development. DEBUG messages provide
less detailed information than TRACE logs but are still not shown by default.
To view these logs, adjust the log level using `Logger.withMinimumLogLevel`.

To import and use `logDebug` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logDebug
```

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.logDebug("message1").pipe(Logger.withMinimumLogLevel(LogLevel.Debug))

// Effect.runFork(program)
// timestamp=... level=DEBUG fiber=#0 message=message1
```

**Signature**

```ts
export declare const logDebug: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
