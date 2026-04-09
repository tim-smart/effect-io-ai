Package: `effect`<br />
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
  | ToolApprovalRequestPart
  | FilePart
  | DocumentSourcePart
  | UrlSourcePart
  | ResponseMetadataPart
  | FinishPart
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L239)

Since v1.0.0