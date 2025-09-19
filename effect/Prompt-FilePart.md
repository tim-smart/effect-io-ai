Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.FilePart

Content part representing a file attachment. Files can be provided as base64
strings of data, byte arrays, or URLs.

Supports various file types including images, documents, and binary data.

**Example**

```ts
import { Prompt } from "@effect/ai"

const imagePart: Prompt.FilePart = Prompt.makePart("file", {
  mediaType: "image/jpeg",
  fileName: "photo.jpg",
  data: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQ..."
})

const documentPart: Prompt.FilePart = Prompt.makePart("file", {
  mediaType: "application/pdf",
  fileName: "report.pdf",
  data: new Uint8Array([1, 2, 3])
})
```

**Signature**

```ts
export interface FilePart extends BasePart<"file", FilePartOptions> {
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L388)

Since v1.0.0