Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningPartEncoded

Encoded representation of reasoning parts for serialization.

**Signature**

```ts
export interface ReasoningPartEncoded extends BasePartEncoded<"reasoning", ReasoningPartMetadata> {
  /**
   * The reasoning or thought process text.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L865)

Since v1.0.0