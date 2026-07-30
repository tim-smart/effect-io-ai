Package: `effect`<br />
Module: `Effect`<br />

## Effect.logWithLevel

Logs messages or error causes at a specified log level.

**Details**

This function allows you to log one or more messages or error causes while
specifying the desired log level (e.g., DEBUG, INFO, ERROR). It provides
flexibility in categorizing logs based on their importance or severity,
making it easier to filter logs during debugging or production monitoring.

**Example**

```ts
import { Cause, Effect, LogLevel } from "effect"

const program = Effect.logWithLevel(
  LogLevel.Error,
  "Critical error encountered",
  Cause.die("System failure!")
)

Effect.runFork(program)
// Output:
// timestamp=... level=ERROR fiber=#0 message=Critical error encountered cause="Error: System failure!"
```

**Signature**

```ts
declare const logWithLevel: (level: LogLevel.LogLevel, ...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10881)

Since v2.0.0