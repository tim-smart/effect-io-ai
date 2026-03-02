Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.Prompt

A Prompt contains a sequence of messages that form the context of a
conversation with a large language model.

**Signature**

```ts
export interface Prompt extends Pipeable {
  readonly [TypeId]: typeof TypeId
  /**
   * Array of messages that make up the conversation.
   */
  readonly content: ReadonlyArray<Message>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1702)

Since v4.0.0