Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L728)

Since v1.0.0