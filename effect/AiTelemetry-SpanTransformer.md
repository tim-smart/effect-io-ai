Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.SpanTransformer

Represents a method which receives the elements of the request / response to
a large language model and can be used to modify the span used to trace the
API call.

**Signature**

```ts
export interface SpanTransformer {
  (options: AiLanguageModelOptions & { readonly response: AiResponse }): void
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L290)

Since v1.0.0