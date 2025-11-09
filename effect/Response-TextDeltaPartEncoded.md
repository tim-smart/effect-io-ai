Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextDeltaPartEncoded

Encoded representation of text delta parts for serialization.

**Signature**

```ts
export interface TextDeltaPartEncoded extends BasePartEncoded<"text-delta", TextDeltaPartMetadata> {
  /**
   * Unique identifier matching the corresponding text chunk.
   */
  readonly id: string
  /**
   * The incremental text content to add.
   */
  readonly delta: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L732)

Since v1.0.0