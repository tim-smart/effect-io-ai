Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningEndPart

Response part indicating the completion of a streaming reasoning chunk.

**Signature**

```ts
export interface ReasoningEndPart extends BasePart<"reasoning-end", ReasoningEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding reasoning chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L1014)

Since v4.0.0