Package: `effect`<br />
Module: `Logger`<br />

## Logger.formatSimple

A `Logger` which outputs logs as a string.

For example:
```
timestamp=2025-01-03T14:22:47.570Z level=INFO fiber=#1 message=hello
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the simple format logger
const simpleLoggerProgram = Effect.log("Hello Simple Format").pipe(
  Effect.provide(Logger.layer([Logger.formatSimple]))
)

// Combine with console output
const consoleSimpleLogger = Logger.withConsoleLog(Logger.formatSimple)

const program = Effect.gen(function*() {
  yield* Effect.log("Application started")
  yield* Effect.logInfo("Processing data")
  yield* Effect.logWarning("Memory usage high")
}).pipe(
  Effect.provide(Logger.layer([consoleSimpleLogger]))
)
```

**Signature**

```ts
declare const formatSimple: Logger<unknown, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L575)

Since v4.0.0