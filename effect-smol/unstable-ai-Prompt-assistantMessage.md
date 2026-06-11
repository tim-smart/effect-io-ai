Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.assistantMessage

Constructs a new assistant message.

**When to use**

Use to add assistant-role prompt history or model responses.

**Details**

This is the role-specific wrapper around `makeMessage("assistant", params)`.

**Signature**

```ts
declare const assistantMessage: (params: MessageConstructorParams<AssistantMessage>) => AssistantMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1526)

Since v4.0.0