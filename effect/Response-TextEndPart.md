Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextEndPart

Response part indicating the end of streaming text content.

Marks the completion of a text chunk.

**Signature**

```ts
export interface TextEndPart extends BasePart<"text-end", TextEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L783)

Since v1.0.0