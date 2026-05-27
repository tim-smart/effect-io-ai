Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.Bash_20241022

Anthropic Bash tool (2024-10-22 version).

**When to use**

Use when you need the model to execute bash commands and require the 2024-10-22
version of the Anthropic computer-use beta.

**Details**

Allows the model to execute bash commands in a sandboxed environment.
Requires the "computer-use-2024-10-22" beta header.

**See**

- `Bash_20250124` for the newer 2025-01-24 version of the bash tool

**Signature**

```ts
declare const Bash_20241022: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.bash_20241022", "AnthropicBash", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly command: Schema.String; readonly restart: Schema.optional<Schema.Boolean>; }>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L120)

Since v4.0.0