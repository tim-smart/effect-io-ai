Package: `effect`<br />
Module: `Effect`<br />

## Effect.logDebug

Logs messages at the DEBUG log level.

**Details**

This function logs messages at the DEBUG level, which is typically used for
diagnosing application behavior during development. DEBUG messages provide
less detailed information than TRACE logs but are still not shown by default.
To view these logs, adjust the log level using `Logger.withMinimumLogLevel`.

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.logDebug("message1").pipe(Logger.withMinimumLogLevel(LogLevel.Debug))

Effect.runFork(program)
// timestamp=... level=DEBUG fiber=#0 message=message1
```

**Signature**

```ts
declare const logDebug: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10907)

Since v2.0.0