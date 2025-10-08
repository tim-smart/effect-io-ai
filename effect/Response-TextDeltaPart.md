Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextDeltaPart

Response part containing incremental text content to be added to the existing
text chunk with the same unique identifier.

**Signature**

```ts
export interface TextDeltaPart extends BasePart<"text-delta", TextDeltaPartMetadata> {
  /**
   * Unique identifier matching the corresponding text chunk.
   */
  readonly id: string
  /**
   * The incremental text content to add.
   */
  readonly delta: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L710)

Since v1.0.0