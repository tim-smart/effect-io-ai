Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebSearchUserLocation

Describes user location for localizing search results.

**When to use**

Use when providing location helps return more relevant results for
location-dependent queries like weather, local businesses, or events.

**Details**

The schema uses `type: "approximate"` plus optional `city`, `region`,
`country`, and `timezone`. `country` is an ISO 3166-1 alpha-2 code, and
`timezone` is an IANA time zone identifier.

**See**

- `WebSearch_20250305_Args` for the argument schema that consumes this location

**Signature**

```ts
declare const WebSearchUserLocation: Schema.Struct<{ readonly type: Schema.Literal<"approximate">; readonly city: Schema.optional<Schema.String>; readonly region: Schema.optional<Schema.String>; readonly country: Schema.optional<Schema.String>; readonly timezone: Schema.optional<Schema.String>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L2040)

Since v4.0.0