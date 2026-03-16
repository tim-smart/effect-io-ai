Package: `effect`<br />
Module: `index`<br />

## index.Telemetry

Re-exports all named exports from the "./Telemetry.ts" module as `Telemetry`.

**Example**

```ts
import { Effect } from "effect"
import { Telemetry } from "effect/unstable/ai"

// Add telemetry attributes to a span
const addTelemetry = Effect.gen(function*() {
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
export * as Telemetry from "./Telemetry.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L429)

Since v4.0.0