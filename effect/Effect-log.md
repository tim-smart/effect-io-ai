# log

Logs one or more messages or error causes at the current log level, which is INFO by default.
This function allows logging multiple items at once and can include detailed error information using `Cause` instances.

To adjust the log level, use the `Logger.withMinimumLogLevel` function.

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
