Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.GenAITelemetryAttributeOptions

Configuration options for GenAI telemetry attributes.

Combines base attributes with optional grouped attributes for comprehensive
telemetry coverage of AI operations.

**Example**

```ts
import { Telemetry } from "@effect/ai"

const telemetryOptions: Telemetry.GenAITelemetryAttributeOptions = {
  system: "openai",
  operation: {
    name: "chat"
  },
  request: {
    model: "gpt-4-turbo",
    temperature: 0.7,
    maxTokens: 2000
  },
  response: {
    id: "chatcmpl-123",
    model: "gpt-4-turbo-2024-04-09",
    finishReasons: ["stop"]
  },
  usage: {
    inputTokens: 50,
    outputTokens: 25
  }
}
```

**Signature**

```ts
type GenAITelemetryAttributeOptions = BaseAttributes & {
  /**
   * Operation-specific attributes (e.g., operation name).
   */
  readonly operation?: OperationAttributes | undefined
  /**
   * Request-specific attributes (e.g., model parameters).
   */
  readonly request?: RequestAttributes | undefined
  /**
   * Response-specific attributes (e.g., response metadata).
   */
  readonly response?: ResponseAttributes | undefined
  /**
   * Token-specific attributes.
   */
  readonly token?: TokenAttributes | undefined
  /**
   * Usage statistics attributes (e.g., token counts).
   */
  readonly usage?: UsageAttributes | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L391)

Since v1.0.0