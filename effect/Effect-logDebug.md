# logDebug

Logs the specified messages at the DEBUG log level.
DEBUG messages are not shown by default.

To view DEBUG messages, adjust the logging settings using
`Logger.withMinimumLogLevel` and set the log level to `LogLevel.Debug`.

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
