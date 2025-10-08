Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ReasoningEndPart

Response part indicating the end of streaming reasoning content.

Marks the completion of a chunk of reasoning content.

**Signature**

```ts
export interface ReasoningEndPart extends BasePart<"reasoning-end", ReasoningEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding reasoning chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1059)

Since v1.0.0