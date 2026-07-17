Package: `effect`<br />
Module: `Response`<br />

## Response.TextEndPart

Response part indicating the completion of a streaming text chunk.

**Signature**

```ts
export interface TextEndPart extends BasePart<"text-end", TextEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L757)

Since v4.0.0