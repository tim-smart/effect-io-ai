Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextStartPartEncoded

Encoded representation of text start parts for serialization.

**Signature**

```ts
export interface TextStartPartEncoded extends BasePartEncoded<"text-start", TextStartPartMetadata> {
  /**
   * Unique identifier for this text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L665)

Since v1.0.0