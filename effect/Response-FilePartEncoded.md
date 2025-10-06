Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.FilePartEncoded

Encoded representation of file parts for serialization.

**Signature**

```ts
export interface FilePartEncoded extends BasePartEncoded<"file", FilePartMetadata> {
  /**
   * MIME type of the file (e.g., "image/jpeg", "application/pdf").
   */
  readonly mediaType: string
  /**
   * File data as a base64 string.
   */
  readonly data: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1757)

Since v1.0.0