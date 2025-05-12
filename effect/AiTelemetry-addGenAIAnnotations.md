Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.addGenAIAnnotations

Applies the specified GenAI telemetry attributes to the provided `Span`.

**NOTE**: This method will mutate the `Span` **in-place**.

**Signature**

```ts
declare const addGenAIAnnotations: { (options: GenAITelemetryAttributeOptions): (span: Span) => void; (span: Span, options: GenAITelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L267)

Since v1.0.0, Utilities