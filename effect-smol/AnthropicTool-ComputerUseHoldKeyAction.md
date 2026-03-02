Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseHoldKeyAction

Holds a key while performing other actions.

**Signature**

```ts
declare const ComputerUseHoldKeyAction: Schema.Struct<{ readonly action: Schema.Literal<"hold_key">; readonly text: Schema.String; readonly duration: Schema.Number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L503)

Since v1.0.0