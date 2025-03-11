## pretty

The pretty logger utilizes the capabilities of the console API to generate
visually engaging and color-enhanced log outputs. This feature is
particularly useful for improving the readability of log messages during
development and debugging processes.

**Example**

```ts
import { Effect, Logger } from "effect"

const program = Effect.log("message1", "message2").pipe(
  Effect.annotateLogs({ key1: "value1", key2: "value2" }),
  Effect.withLogSpan("myspan")
)

// Effect.runFork(program.pipe(Effect.provide(Logger.pretty)))
//         green --v                      v-- bold and cyan
// [07:51:54.434] INFO (#0) myspan=1ms: message1
//   message2
//    v-- bold
//   key2: value2
//   key1: value1
```

**Signature**

```ts
declare const pretty: Layer.Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L639)

Since v3.5.0