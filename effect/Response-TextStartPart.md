Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextStartPart

Response part indicating the start of streaming text content.

Marks the beginning of a text chunk with a unique identifier.

**Signature**

```ts
export interface TextStartPart extends BasePart<"text-start", TextStartPartMetadata> {
  /**
   * Unique identifier for this text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L647)

Since v1.0.0