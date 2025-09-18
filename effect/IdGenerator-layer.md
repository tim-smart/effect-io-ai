Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.layer

Creates a Layer that provides the IdGenerator service with custom
configuration.

This is the recommended way to provide ID generation capabilities to your
application. The layer will fail during construction if the configuration is
invalid.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect, Layer } from "effect"

// Create a layer for generating AI tool call IDs
const toolCallIdLayer = IdGenerator.layer({
  alphabet: "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
  prefix: "tool_call",
  separator: "_",
  size: 12
})

const program = Effect.gen(function* () {
  const idGen = yield* IdGenerator.IdGenerator
  const toolCallId = yield* idGen.generateId()
  console.log(toolCallId) // "tool_call_A7XK9MP2QR5T"
  return toolCallId
}).pipe(
  Effect.provide(toolCallIdLayer)
)
```

**Signature**

```ts
declare const layer: (options: MakeOptions) => Layer.Layer<IdGenerator, Cause.IllegalArgumentException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L319)

Since v1.0.0