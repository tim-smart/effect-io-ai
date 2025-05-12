Package: `@effect/ai`<br />
Module: `AiResponse`<br />

## AiResponse.Part

Represents an single part of a response received from a large language model.

**Signature**

```ts
declare const Part: Schema.Union<[typeof TextPart, typeof ReasoningPart, typeof RedactedReasoningPart, typeof ToolCallPart, typeof MetadataPart, typeof FinishPart]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiResponse.ts#L690)

Since v1.0.0