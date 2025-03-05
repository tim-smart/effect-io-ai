# addGenAIAnnotations

Applies the specified OpenAi GenAI telemetry attributes to the provided
`Span`.

**NOTE**: This method will mutate the `Span` **in-place**.

To import and use `addGenAIAnnotations` from the "OpenAiTelemetry" module:

```ts
import * as OpenAiTelemetry from "@effect/ai-openai/OpenAiTelemetry"
// Can be accessed like this
OpenAiTelemetry.addGenAIAnnotations
```

**Signature**

```ts
export declare const addGenAIAnnotations: ((options: OpenAiTelemetryAttributeOptions) => (span: Span) => void) &
  ((span: Span, options: OpenAiTelemetryAttributeOptions) => void)
```
