Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseLeftMouseDownAction

Press the left mouse button down (without releasing).

Used for fine-grained click control.

**Signature**

```ts
declare const ComputerUseLeftMouseDownAction: Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_down">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L551)

Since v1.0.0