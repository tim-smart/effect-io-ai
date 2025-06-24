Package: `effect`<br />
Module: `Effect`<br />

## Effect.log

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

**Example**

```ts
import { Cause, Effect } from "effect"

const program = Effect.log(
  "message1",
  "message2",
  Cause.die("Oh no!"),
  Cause.die("Oh uh!")
)

Effect.runFork(program)
// Output:
// timestamp=... level=INFO fiber=#0 message=message1 message=message2 cause="Error: Oh no!
// Error: Oh uh!"
```

**Signature**

```ts
declare const log: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10857)

Since v2.0.0