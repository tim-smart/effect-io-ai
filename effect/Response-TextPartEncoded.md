Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L596)

Since v1.0.0