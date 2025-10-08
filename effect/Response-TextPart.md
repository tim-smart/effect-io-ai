Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextPart

Response part representing plain text content.

**Example**

```ts
import { Response } from "@effect/ai"

const textPart: Response.TextPart = Response.makePart("text", {
  text: "The answer to your question is 42.",
})
```

**Signature**

```ts
export interface TextPart extends BasePart<"text", TextPartMetadata> {
  /**
   * The text content.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L583)

Since v1.0.0