Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.Bash_20250124

Anthropic Bash tool (2025-01-24 version).

Allows the model to execute bash commands in a sandboxed environment.
Requires the "computer-use-2025-01-24" beta header.

**Signature**

```ts
declare const Bash_20250124: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.bash_20250124", "AnthropicBash", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly command: Schema.String; readonly restart: Schema.optional<Schema.Boolean>; }>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L71)

Since v1.0.0