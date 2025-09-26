Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L875)

Since v1.0.0