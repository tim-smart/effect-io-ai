Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1077)

Since v1.0.0