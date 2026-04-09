Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.AssistantMessageEncoded

Encoded representation of assistant messages for serialization.

**Signature**

```ts
export interface AssistantMessageEncoded extends BaseMessageEncoded<"assistant", AssistantMessageOptions> {
  readonly content: string | ReadonlyArray<AssistantMessagePartEncoded>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1422)

Since v4.0.0