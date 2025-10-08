Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.AssistantMessageEncoded

Encoded representation of assistant messages for serialization.

**Signature**

```ts
export interface AssistantMessageEncoded extends BaseMessageEncoded<"assistant", AssistantMessageOptions> {
  readonly content: string | ReadonlyArray<AssistantMessagePartEncoded>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1077)

Since v1.0.0