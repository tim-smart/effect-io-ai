# addGenAIAnnotations

Applies the specified GenAI telemetry attributes to the provided `Span`.

**NOTE**: This method will mutate the `Span` **in-place**.

To import and use `addGenAIAnnotations` from the "AiTelemetry" module:

```ts
import * as AiTelemetry from "@effect/ai/AiTelemetry"
// Can be accessed like this
AiTelemetry.addGenAIAnnotations
```

**Signature**

```ts
export declare const addGenAIAnnotations: {
  (options: GenAITelemetryAttributeOptions): (span: Span) => void
  (span: Span, options: GenAITelemetryAttributeOptions): void
}
```
