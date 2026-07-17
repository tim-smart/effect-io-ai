Package: `effect`<br />
Module: `Response`<br />

## Response.TextPartEncoded

Encoded representation of text parts for serialization.

**Signature**

```ts
export interface TextPartEncoded extends BasePartEncoded<"text", TextPartMetadata> {
  /**
   * The text content.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L584)

Since v4.0.0