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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L841)

Since v4.0.0