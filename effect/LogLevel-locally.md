# locally

Temporarily sets a `LogLevel` for an `Effect` workflow.

**Details**

This function allows you to apply a specific `LogLevel` locally to an
`Effect` workflow. Once the workflow completes, the `LogLevel` reverts to its
previous state.

**When to Use**

This is particularly useful when you want to adjust the verbosity of logging
for specific parts of your program without affecting the global log level.

To import and use `locally` from the "LogLevel" module:

```ts
import * as LogLevel from "effect/LogLevel"
// Can be accessed like this
LogLevel.locally
```

**Example**

```ts
import { Effect, LogLevel } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.log("message1")
  yield* Effect.gen(function* () {
    yield* Effect.log("message2")
    yield* Effect.log("message3")
  }).pipe(LogLevel.locally(LogLevel.Warning))
})

// Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message=message1
// timestamp=... level=WARN fiber=#0 message=message2
// timestamp=... level=WARN fiber=#0 message=message3
```

**Signature**

```ts
export declare const locally: {
  (self: LogLevel): <A, E, R>(use: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(use: Effect.Effect<A, E, R>, self: LogLevel): Effect.Effect<A, E, R>
}
```
