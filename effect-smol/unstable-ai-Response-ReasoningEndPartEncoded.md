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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1054)

Since v1.0.0