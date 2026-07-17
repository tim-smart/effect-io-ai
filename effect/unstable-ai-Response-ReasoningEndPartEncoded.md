Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningEndPartEncoded

Encoded representation of reasoning end parts for serialization.

**Signature**

```ts
export interface ReasoningEndPartEncoded extends BasePartEncoded<"reasoning-end", ReasoningEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding reasoning chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L1027)

Since v4.0.0