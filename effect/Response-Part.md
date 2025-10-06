Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.Part

A type for representing non-streaming response parts with tool-specific
typing.

**Signature**

```ts
type Part<Tools> = | TextPart
  | ReasoningPart
  | ToolCallParts<Tools>
  | ToolResultParts<Tools>
  | FilePart
  | DocumentSourcePart
  | UrlSourcePart
  | ResponseMetadataPart
  | FinishPart
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L247)

Since v1.0.0