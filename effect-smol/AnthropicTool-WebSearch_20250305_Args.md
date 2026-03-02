Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebSearch_20250305_Args

Configuration arguments for the web search tool.

**Signature**

```ts
declare const WebSearch_20250305_Args: Schema.Struct<{ readonly maxUses: Schema.optional<Schema.Number>; readonly allowedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly blockedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly userLocation: Schema.optional<Schema.Struct<{ readonly type: Schema.Literal<"approximate">; readonly city: Schema.optional<Schema.String>; readonly region: Schema.optional<Schema.String>; readonly country: Schema.optional<Schema.String>; readonly timezone: Schema.optional<Schema.String>; }>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1296)

Since v1.0.0