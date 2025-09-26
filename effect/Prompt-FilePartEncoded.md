Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.FilePartEncoded

Encoded representation of file parts for serialization.

**Signature**

```ts
export interface FilePartEncoded extends BasePartEncoded<"file", FilePartOptions> {
  /**
   * MIME type of the file (e.g., "image/jpeg", "application/pdf").
   */
  readonly mediaType: string
  /**
   * Optional filename for the file.
   */
  readonly fileName?: string | undefined
  /**
   * File data as base64 string of data, a byte array, or a URL.
   */
  readonly data: string | Uint8Array | URL
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L414)

Since v1.0.0