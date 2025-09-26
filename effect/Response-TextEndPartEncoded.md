Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.TextEndPartEncoded

Encoded representation of text end parts for serialization.

**Signature**

```ts
export interface TextEndPartEncoded extends BasePartEncoded<"text-end", TextEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L753)

Since v1.0.0