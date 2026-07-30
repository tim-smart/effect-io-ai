Package: `@effect/ai`<br />
Module: `index`<br />

## index.Telemetry

Re-exports all named exports from the "./Telemetry.js" module as `Telemetry`.

**Example**

```ts
import { Telemetry } from "@effect/ai"
import { Effect } from "effect"

// Add telemetry attributes to a span
const addTelemetry = Effect.gen(function* () {
  const span = yield* Effect.currentSpan

  Telemetry.addGenAIAnnotations(span, {
    system: "openai",
    operation: { name: "chat" },
    request: {
      model: "gpt-4",
      temperature: 0.7,
      maxTokens: 1000
    },
    usage: {
      inputTokens: 100,
      outputTokens: 50
    }
  })
})
```

**Signature**

```ts
export * as Telemetry from "./Telemetry.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L440)

Since v1.0.0