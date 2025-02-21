# logTrace

Logs messages at the TRACE log level.

**Details**

This function logs the specified messages at the TRACE level. TRACE logs are
typically used for very detailed diagnostic information. These messages are
not displayed by default. To view them, you must adjust the logging
configuration by setting the minimum log level to `LogLevel.Trace` using
`Logger.withMinimumLogLevel`.

To import and use `logTrace` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logTrace
```

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.logTrace("message1").pipe(Logger.withMinimumLogLevel(LogLevel.Trace))

// Effect.runFork(program)
// timestamp=... level=TRACE fiber=#0 message=message1
```

**Signature**

```ts
export declare const logTrace: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
