Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUse_20241022

Allow Claude to interact with computer environments through the computer use
tool, which provides screenshot capabilities and mouse/keyboard control for
autonomous desktop interaction.

**Signature**

```ts
declare const ComputerUse_20241022: (args: { readonly display_height_px: number; readonly display_width_px: number; readonly cache_control?: { readonly type: "ephemeral"; readonly ttl?: "5m" | "1h" | null | undefined; } | null | undefined; readonly display_number?: number | null | undefined; }) => Tool.ProviderDefined<"AnthropicComputerUse", { readonly args: Schema.Struct<{ readonly cache_control: Schema.optionalWith<typeof Generated.BetaCacheControlEphemeral, { nullable: true; }>; readonly display_height_px: Schema.filter<typeof Schema.Int>; readonly display_number: Schema.optionalWith<Schema.filter<typeof Schema.Int>, { nullable: true; }>; readonly display_width_px: Schema.filter<typeof Schema.Int>; }>; readonly parameters: Schema.Struct<{ action: Schema.Literal<["screenshot", "left_click", "type", "key", "mouse_move"]>; coordinate: Schema.optional<Schema.Tuple2<typeof Schema.Number, typeof Schema.Number>>; text: Schema.optional<typeof Schema.String>; }>; readonly success: typeof Schema.String; readonly failure: typeof Schema.Never; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L137)

Since v1.0.0