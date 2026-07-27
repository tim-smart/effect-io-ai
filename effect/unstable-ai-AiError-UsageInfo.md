Package: `effect`<br />
Module: `AiError`<br />

## AiError.UsageInfo

Schema for token usage information from AI operations.

**Details**

Schema for optional provider-reported token counts for prompt tokens,
completion tokens, and total tokens.

**Signature**

```ts
declare const UsageInfo: Schema.Struct<{ readonly promptTokens: Schema.optional<Schema.Int>; readonly completionTokens: Schema.optional<Schema.Int>; readonly totalTokens: Schema.optional<Schema.Int>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AiError.ts#L309)

Since v4.0.0