Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.GenAI.WellKnownOperationName

The `gen_ai.operation.name` attribute has the following list of well-known
values.

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownOperationName = "chat" | "embeddings" | "text_completion"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L182)

Since v1.0.0