Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUse_20250124

Computer use tool for Claude 4 models and Claude Sonnet 3.7.

Requires the "computer-use-2025-01-24" beta header.

Includes basic actions plus enhanced actions: scroll, left_click_drag,
right_click, middle_click, double_click, triple_click, left_mouse_down,
left_mouse_up, hold_key, wait.

**Signature**

```ts
declare const ComputerUse_20250124: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly displayWidthPx: number; readonly displayHeightPx: number; readonly displayNumber?: number | undefined; readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.computer_20250124", "AnthropicComputerUse", { readonly args: Schema.Struct<{ readonly displayWidthPx: Schema.Number; readonly displayHeightPx: Schema.Number; readonly displayNumber: Schema.optional<Schema.Number>; }>; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly action: Schema.Literal<"key">; readonly text: Schema.String; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"mouse_move">; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>, Schema.Struct<{ readonly action: Schema.Literal<"screenshot">; }>, Schema.Struct<{ readonly action: Schema.Literal<"type">; readonly text: Schema.String; }>, Schema.Struct<{ readonly action: Schema.Literal<"double_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"hold_key">; readonly text: Schema.String; readonly duration: Schema.Number; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_click_drag">; readonly start_coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_down">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_up">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"middle_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"right_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"scroll">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; readonly scroll_direction: Schema.Literals<readonly ["up", "down", "left", "right"]>; readonly scroll_amount: Schema.Number; }>, Schema.Struct<{ readonly action: Schema.Literal<"triple_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"wait">; readonly duration: Schema.Number; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L775)

Since v1.0.0