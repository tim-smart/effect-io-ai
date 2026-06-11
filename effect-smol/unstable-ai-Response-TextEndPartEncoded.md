Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L770)

Since v4.0.0