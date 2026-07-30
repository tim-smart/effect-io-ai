Package: `effect`<br />
Module: `Logger`<br />

## Logger.jsonLogger

The `jsonLogger` logger formats log entries as JSON objects, making them easy to
integrate with logging systems that consume JSON data.

**Example**

```ts
import { Effect, Logger } from "effect"

const program = Effect.log("message1", "message2").pipe(
  Effect.annotateLogs({ key1: "value1", key2: "value2" }),
  Effect.withLogSpan("myspan")
)

Effect.runFork(program.pipe(Effect.provide(Logger.json)))
// {"message":["message1","message2"],"logLevel":"INFO","timestamp":"...","annotations":{"key2":"value2","key1":"value1"},"spans":{"myspan":0},"fiberId":"#0"}
```

**Signature**

```ts
declare const jsonLogger: Logger<unknown, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L446)

Since v2.0.0