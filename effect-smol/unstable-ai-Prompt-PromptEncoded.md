Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.PromptEncoded

Encoded representation of prompts for serialization.

**Signature**

```ts
export interface PromptEncoded {
  /**
   * Array of messages that make up the conversation.
   */
  readonly content: ReadonlyArray<MessageEncoded>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1710)

Since v4.0.0