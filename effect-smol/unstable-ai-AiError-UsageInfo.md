Package: `effect`<br />
Module: `AiError`<br />

## AiError.UsageInfo

Token usage information from AI operations.

**Details**

Contains optional provider-reported token counts for prompt tokens,
completion tokens, and total tokens.

**Signature**

```ts
declare const UsageInfo: Schema.Struct<{ readonly promptTokens: Schema.optional<Schema.Number>; readonly completionTokens: Schema.optional<Schema.Number>; readonly totalTokens: Schema.optional<Schema.Number>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L377)

Since v4.0.0