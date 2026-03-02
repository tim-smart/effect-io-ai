Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebFetch_20250910

Web fetch tool for Claude models.

Allows Claude to retrieve full content from web pages and PDF documents.
This is a server-side tool executed by Anthropic's infrastructure.

Requires the "web-fetch-2025-09-10" beta header.

**Signature**

```ts
declare const WebFetch_20250910: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly maxUses?: number | undefined; readonly allowedDomains?: ReadonlyArray<string> | undefined; readonly blockedDomains?: ReadonlyArray<string> | undefined; readonly citations?: { readonly enabled: boolean; } | undefined; readonly maxContentTokens?: number | undefined; }) => Tool.ProviderDefined<"anthropic.web_fetch_20250910", "AnthropicWebFetch", { readonly args: Schema.Struct<{ readonly maxUses: Schema.optional<Schema.Number>; readonly allowedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly blockedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly citations: Schema.optional<Schema.Struct<{ readonly enabled: Schema.Boolean; }>>; readonly maxContentTokens: Schema.optional<Schema.Number>; }>; readonly parameters: Schema.Struct<{ readonly url: Schema.String; }>; readonly success: Schema.Struct<{ readonly content: Schema.Struct<{ readonly citations: Schema.Union<readonly [Schema.Struct<{ readonly enabled: Schema.Boolean; }>, Schema.Null]>; readonly source: Schema.Union<readonly [Schema.Struct<{ readonly data: Schema.String; readonly media_type: Schema.Literal<"application/pdf">; readonly type: Schema.Literal<"base64">; }>, Schema.Struct<{ readonly data: Schema.String; readonly media_type: Schema.Literal<"text/plain">; readonly type: Schema.Literal<"text">; }>]>; readonly title: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly type: Schema.Literal<"document">; }>; readonly retrieved_at: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly type: Schema.Literal<"web_fetch_result">; readonly url: Schema.String; }>; readonly failure: Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "url_too_long", "url_not_allowed", "url_not_accessible", "unsupported_content_type", "too_many_requests", "max_uses_exceeded", "unavailable"]>; readonly type: Schema.Literal<"web_fetch_tool_result_error">; }>; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1477)

Since v1.0.0