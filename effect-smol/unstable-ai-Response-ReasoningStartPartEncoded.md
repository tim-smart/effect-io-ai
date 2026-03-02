Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningStartPartEncoded

Encoded representation of reasoning start parts for serialization.

**Signature**

```ts
export interface ReasoningStartPartEncoded extends BasePartEncoded<"reasoning-start", ReasoningStartPartMetadata> {
  /**
   * Unique identifier for this reasoning stream.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L925)

Since v1.0.0