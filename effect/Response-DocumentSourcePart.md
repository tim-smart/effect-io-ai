Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.DocumentSourcePart

Response part representing a document source reference.

Used to reference documents that were used in generating the response.

**Signature**

```ts
export interface DocumentSourcePart extends BasePart<"source", DocumentSourcePartMetadata> {
  /**
   * Type discriminator for document sources.
   */
  readonly sourceType: "document"
  /**
   * Unique identifier for the document.
   */
  readonly id: string
  /**
   * MIME type of the document.
   */
  readonly mediaType: string
  /**
   * Display title of the document.
   */
  readonly title: string
  /**
   * Optional filename of the document.
   */
  readonly fileName?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1666)

Since v1.0.0