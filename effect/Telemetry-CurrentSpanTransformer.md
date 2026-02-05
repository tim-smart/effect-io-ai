Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.CurrentSpanTransformer

Context tag for providing a span transformer to large langauge model
operations.

The CurrentSpanTransformer allows you to inject custom span transformation
logic into AI operations, enabling application-specific telemetry and
observability patterns.

**Example**

```ts
import { Telemetry } from "@effect/ai"
import * as Effect from "effect/Effect"

declare const myAIOperation: Effect.Effect<void>

// Create a custom span transformer
const loggingTransformer: Telemetry.SpanTransformer = (options) => {
  console.log(`AI request completed: ${options.response.length} part(s)`)
  options.response.forEach((part, index) => {
    console.log(`Part ${index}: ${part.type}`)
  })
}

// Provide the transformer to your AI operations
const program = myAIOperation.pipe(
  Effect.provideService(
    Telemetry.CurrentSpanTransformer,
    Telemetry.CurrentSpanTransformer.of(loggingTransformer)
  )
)
```

**Signature**

```ts
declare class CurrentSpanTransformer
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L546)

Since v1.0.0