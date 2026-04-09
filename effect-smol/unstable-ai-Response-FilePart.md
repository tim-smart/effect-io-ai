Package: `effect`<br />
Module: `Response`<br />

## Response.FilePart

Response part representing a file attachment.

Supports various file types including images, documents, and binary data.

**Example**

```ts
import { Response } from "effect/unstable/ai"

const imagePart: Response.FilePart = Response.makePart("file", {
  mediaType: "image/jpeg",
  data: new Uint8Array([1, 2, 3])
})
```

**Signature**

```ts
export interface FilePart extends BasePart<"file", FilePartMetadata> {
  /**
   * MIME type of the file (e.g., "image/jpeg", "application/pdf").
   */
  readonly mediaType: string
  /**
   * File data as a byte array.
   */
  readonly data: Uint8Array
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1840)

Since v1.0.0