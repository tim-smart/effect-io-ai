Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ReasoningDeltaPart

Response part containing incremental reasoning content to be added to the
existing chunk of reasoning text with the same unique identifier.

**Signature**

```ts
export interface ReasoningDeltaPart extends BasePart<"reasoning-delta", ReasoningDeltaPartMetadata> {
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L920)

Since v1.0.0