Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1041)

Since v1.0.0