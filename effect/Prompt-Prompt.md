Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.Prompt

A Prompt contains a sequence of messages that form the context of a
conversation with a large language model.

**Signature**

```ts
export interface Prompt extends Pipeable {
  readonly [TypeId]: TypeId
  /**
   * Array of messages that make up the conversation.
   */
  readonly content: ReadonlyArray<Message>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1303)

Since v1.0.0