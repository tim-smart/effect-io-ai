Package: `@effect/ai`<br />
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
  | FilePartEncoded
  | DocumentSourcePartEncoded
  | UrlSourcePartEncoded
  | ResponseMetadataPartEncoded
  | FinishPartEncoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L264)

Since v1.0.0