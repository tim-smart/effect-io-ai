Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ReasoningDeltaPartEncoded

Encoded representation of reasoning delta parts for serialization.

**Signature**

```ts
export interface ReasoningDeltaPartEncoded extends BasePartEncoded<"reasoning-delta", ReasoningDeltaPartMetadata> {
  /**
   * Unique identifier matching the corresponding reasoning chunk.
   */
  readonly id: string
  /**
   * The incremental reasoning content to add.
   */
  readonly delta: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1002)

Since v1.0.0