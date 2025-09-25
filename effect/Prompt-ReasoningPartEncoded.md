Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ReasoningPartEncoded

Encoded representation of reasoning parts for serialization.

**Signature**

```ts
export interface ReasoningPartEncoded extends BasePartEncoded<"reasoning", ReasoningPartOptions> {
  /**
   * The reasoning or thought process text.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L331)

Since v1.0.0