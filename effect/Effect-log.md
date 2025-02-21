# log

Logs one or more messages or error causes at the current log level.

**Details**

This function provides a simple way to log messages or error causes during
the execution of your effects. By default, logs are recorded at the `INFO`
level, but this can be adjusted using other logging utilities
(`Logger.withMinimumLogLevel`). Multiple items, including `Cause` instances,
can be logged in a single call. When logging `Cause` instances, detailed
error information is included in the log output.

The log output includes useful metadata like the current timestamp, log
level, and fiber ID, making it suitable for debugging and tracking purposes.
This function does not interrupt or alter the effect's execution flow.

To import and use `log` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.log
```

**Example**

```ts
import { Cause, Effect } from "effect"

const program = Effect.log("message1", "message2", Cause.die("Oh no!"), Cause.die("Oh uh!"))

// Effect.runFork(program)
// Output:
// timestamp=... level=INFO fiber=#0 message=message1 message=message2 cause="Error: Oh no!
// Error: Oh uh!"
```

**Signature**

```ts
export declare const log: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```
