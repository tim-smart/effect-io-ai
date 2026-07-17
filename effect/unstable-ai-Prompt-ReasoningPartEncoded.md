Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L329)

Since v4.0.0