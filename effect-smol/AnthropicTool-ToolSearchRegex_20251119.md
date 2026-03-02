Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ToolSearchRegex_20251119

Regex-based tool search for Claude models.

Claude constructs regex patterns using Python's `re.search()` syntax to
find tools. The regex is matched against tool names, descriptions,
argument names, and argument descriptions.

Requires the "advanced-tool-use-2025-11-20" beta header.

**Signature**

```ts
declare const ToolSearchRegex_20251119: <Mode extends Tool.FailureMode | undefined = undefined>(args: void) => Tool.ProviderDefined<"anthropic.tool_search_tool_regex_20251119", "AnthropicToolSearchRegex", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly query: Schema.String; }>; readonly success: Schema.$Array<Schema.Struct<{ readonly cache_control: Schema.optionalKey<Schema.Union<readonly [Schema.Union<readonly [Schema.Struct<{ readonly ttl: Schema.optionalKey<Schema.Literals<readonly ["5m", "1h"]>>; readonly type: Schema.Literal<"ephemeral">; }>]>, Schema.Null]>>; readonly tool_name: Schema.String; readonly type: Schema.Literal<"tool_reference">; }>>; readonly failure: Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "too_many_requests", "execution_time_exceeded"]>; readonly error_message: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly type: Schema.Literal<"tool_search_tool_result_error">; }>; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1550)

Since v1.0.0