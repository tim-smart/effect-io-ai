Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebSearchUserLocation

User location for localizing search results.

**When to use**

Providing location helps return more relevant results for location-dependent
queries like weather, local businesses, events, etc.

**Signature**

```ts
declare const WebSearchUserLocation: Schema.Struct<{ readonly type: Schema.Literal<"approximate">; readonly city: Schema.optional<Schema.String>; readonly region: Schema.optional<Schema.String>; readonly country: Schema.optional<Schema.String>; readonly timezone: Schema.optional<Schema.String>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1399)

Since v4.0.0