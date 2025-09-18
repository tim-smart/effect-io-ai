Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolParamsDeltaPart

Response part containing incremental tool parameter content.

Represents a chunk of tool parameters being streamed, containing the
incremental JSON content that forms the tool parameters.

**Signature**

```ts
export interface ToolParamsDeltaPart extends BasePart<"tool-params-delta", ToolParamsDeltaPartMetadata> {
  /**
   * Unique identifier matching the corresponding tool parameter chunk.
   */
  readonly id: string
  /**
   * The incremental parameter content (typically JSON fragment) to add.
   */
  readonly delta: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1138)

Since v1.0.0