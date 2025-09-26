Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1201)

Since v1.0.0