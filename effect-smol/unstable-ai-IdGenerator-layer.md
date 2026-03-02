Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.layer

Creates a Layer that provides the IdGenerator service with custom
configuration.

This is the recommended way to provide ID generation capabilities to your
application. The layer will fail during construction if the configuration is
invalid.

**Example**

```ts
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

// Create a layer for generating AI tool call IDs
const toolCallIdLayer = IdGenerator.layer({
  alphabet: "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
  prefix: "tool_call",
  separator: "_",
  size: 12
})

const program = Effect.gen(function*() {
  const idGen = yield* IdGenerator.IdGenerator
  const toolCallId = yield* idGen.generateId()
  console.log(toolCallId) // "tool_call_A7XK9MP2QR5T"
  return toolCallId
}).pipe(Effect.provide(toolCallIdLayer))
```

**Signature**

```ts
declare const layer: (options: MakeOptions) => Layer.Layer<IdGenerator, Cause.IllegalArgumentError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L313)

Since v4.0.0