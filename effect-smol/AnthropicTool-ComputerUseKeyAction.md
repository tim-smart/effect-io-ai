Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseKeyAction

Press a key or key combination (e.g. `"Return"`, `"ctrl+c"`, `"ctrl+s"`).

**Signature**

```ts
declare const ComputerUseKeyAction: Schema.Struct<{ readonly action: Schema.Literal<"key">; readonly text: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L379)

Since v1.0.0