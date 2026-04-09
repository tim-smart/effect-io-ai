Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L986)

Since v1.0.0