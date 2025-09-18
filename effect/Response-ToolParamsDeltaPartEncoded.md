Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolParamsDeltaPartEncoded

Encoded representation of tool params delta parts for serialization.

**Signature**

```ts
export interface ToolParamsDeltaPartEncoded extends BasePartEncoded<"tool-params-delta", ToolParamsDeltaPartMetadata> {
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1155)

Since v1.0.0