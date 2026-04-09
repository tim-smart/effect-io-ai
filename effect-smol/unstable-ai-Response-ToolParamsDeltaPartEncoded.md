Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1203)

Since v1.0.0