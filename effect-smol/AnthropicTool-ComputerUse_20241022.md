Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUse_20241022

Computer use tool for Claude 3.5 Sonnet v2 (deprecated).

Requires the "computer-use-2024-10-22" beta header.

Basic actions only: screenshot, left_click, type, key, mouse_move.

**Signature**

```ts
declare const ComputerUse_20241022: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly displayWidthPx: number; readonly displayHeightPx: number; readonly displayNumber?: number | undefined; readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.computer_use_20241022", "AnthropicComputerUse", { readonly args: Schema.Struct<{ readonly displayWidthPx: Schema.Number; readonly displayHeightPx: Schema.Number; readonly displayNumber: Schema.optional<Schema.Number>; }>; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly action: Schema.Literal<"key">; readonly text: Schema.String; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"mouse_move">; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>, Schema.Struct<{ readonly action: Schema.Literal<"screenshot">; }>, Schema.Struct<{ readonly action: Schema.Literal<"type">; readonly text: Schema.String; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L753)

Since v1.0.0