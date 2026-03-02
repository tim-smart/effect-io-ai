Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebSearch_20250305

Web search tool for Claude models.

Enables Claude to search the web for real-time information. This is a
server-side tool executed by Anthropic's infrastructure.

Generally available (no beta header required).

**Signature**

```ts
declare const WebSearch_20250305: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly maxUses?: number | undefined; readonly allowedDomains?: ReadonlyArray<string> | undefined; readonly blockedDomains?: ReadonlyArray<string> | undefined; readonly userLocation?: { readonly type: "approximate"; readonly region?: string | undefined; readonly city?: string | undefined; readonly country?: string | undefined; readonly timezone?: string | undefined; } | undefined; }) => Tool.ProviderDefined<"anthropic.web_search_20250305", "AnthropicWebSearch", { readonly args: Schema.Struct<{ readonly maxUses: Schema.optional<Schema.Number>; readonly allowedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly blockedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly userLocation: Schema.optional<Schema.Struct<{ readonly type: Schema.Literal<"approximate">; readonly city: Schema.optional<Schema.String>; readonly region: Schema.optional<Schema.String>; readonly country: Schema.optional<Schema.String>; readonly timezone: Schema.optional<Schema.String>; }>>; }>; readonly parameters: Schema.Struct<{ readonly query: Schema.String; }>; readonly success: Schema.$Array<Schema.Struct<{ readonly encrypted_content: Schema.String; readonly page_age: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly title: Schema.String; readonly type: Schema.Literal<"web_search_result">; readonly url: Schema.String; }>>; readonly failure: Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "max_uses_exceeded", "too_many_requests", "query_too_long", "request_too_large"]>; readonly type: Schema.Literal<"web_search_tool_result_error">; }>; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1361)

Since v1.0.0