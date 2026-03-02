Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L781)

Since v1.0.0