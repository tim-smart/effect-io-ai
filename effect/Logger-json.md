# json

The `json` logger formats log entries as JSON objects, making them easy to
integrate with logging systems that consume JSON data.

To import and use `json` from the "Logger" module:

```ts
import * as Logger from "effect/Logger"
// Can be accessed like this
Logger.json
```

**Example**

```ts
import { Effect, Logger } from "effect"

const program = Effect.log("message1", "message2").pipe(
  Effect.annotateLogs({ key1: "value1", key2: "value2" }),
  Effect.withLogSpan("myspan")
)

// Effect.runFork(program.pipe(Effect.provide(Logger.json)))
// {"message":["message1","message2"],"logLevel":"INFO","timestamp":"...","annotations":{"key2":"value2","key1":"value1"},"spans":{"myspan":0},"fiberId":"#0"}
```

**Signature**

```ts
export declare const json: Layer.Layer<never, never, never>
```
