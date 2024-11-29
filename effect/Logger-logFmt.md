# logFmt

This logger outputs logs in a human-readable format that is easy to read
during development or in a production console.

To import and use `logFmt` from the "Logger" module:

ts
import \* as Logger from "effect/Logger"
// Can be accessed like this
Logger.logFmt
undefined

**Example**

```ts
import { Effect, Logger } from "effect"

const program = Effect.log("message1", "message2").pipe(
  Effect.annotateLogs({ key1: "value1", key2: "value2" }),
  Effect.withLogSpan("myspan")
)

// Effect.runFork(program.pipe(Effect.provide(Logger.logFmt)))
// timestamp=... level=INFO fiber=#0 message=message1 message=message2 myspan=0ms key2=value2 key1=value1
```

**Signature**

```ts
export declare const logFmt: Layer.Layer<never, never, never>
```
