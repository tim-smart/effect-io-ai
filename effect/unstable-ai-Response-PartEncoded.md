Package: `effect`<br />
Module: `Response`<br />

## Response.PartEncoded

Encoded representation of non-streaming response parts for serialization.

**Signature**

```ts
type PartEncoded = | TextPartEncoded
  | ReasoningPartEncoded
  | ReasoningDeltaPartEncoded
  | ReasoningEndPartEncoded
  | ToolCallPartEncoded
  | ToolResultPartEncoded
  | ToolApprovalRequestPartEncoded
  | FilePartEncoded
  | DocumentSourcePartEncoded
  | UrlSourcePartEncoded
  | ResponseMetadataPartEncoded
  | FinishPartEncoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L244)

Since v4.0.0