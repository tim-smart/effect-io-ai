Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUse_20251124

Computer use tool for Claude Opus 4.5 only.

Requires the "computer-use-2025-11-24" beta header.

Includes all actions from computer_20250124 plus the zoom action for
detailed screen region inspection. Requires `enableZoom: true` in args.

**Signature**

```ts
declare const ComputerUse_20251124: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly displayWidthPx: number; readonly displayHeightPx: number; readonly enableZoom?: boolean | undefined; readonly displayNumber?: number | undefined; readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.computer_20251124", "AnthropicComputerUse", { readonly args: Schema.Struct<{ readonly enableZoom: Schema.optional<Schema.Boolean>; readonly displayWidthPx: Schema.Number; readonly displayHeightPx: Schema.Number; readonly displayNumber: Schema.optional<Schema.Number>; }>; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly action: Schema.Literal<"key">; readonly text: Schema.String; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"mouse_move">; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>, Schema.Struct<{ readonly action: Schema.Literal<"screenshot">; }>, Schema.Struct<{ readonly action: Schema.Literal<"type">; readonly text: Schema.String; }>, Schema.Struct<{ readonly action: Schema.Literal<"double_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"hold_key">; readonly text: Schema.String; readonly duration: Schema.Number; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_click_drag">; readonly start_coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_down">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_up">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"middle_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"right_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"scroll">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; readonly scroll_direction: Schema.Literals<readonly ["up", "down", "left", "right"]>; readonly scroll_amount: Schema.Number; }>, Schema.Struct<{ readonly action: Schema.Literal<"triple_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly action: Schema.Literal<"wait">; readonly duration: Schema.Number; }>, Schema.Struct<{ readonly action: Schema.Literal<"zoom">; readonly region: Schema.Tuple<readonly [Schema.Number, Schema.Number, Schema.Number, Schema.Number]>; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L796)

Since v1.0.0