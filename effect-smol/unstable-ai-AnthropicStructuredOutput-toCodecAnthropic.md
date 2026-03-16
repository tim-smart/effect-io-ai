Package: `effect`<br />
Module: `AnthropicStructuredOutput`<br />

## AnthropicStructuredOutput.toCodecAnthropic

Transforms a `Schema.Codec` into a form compatible with Anthropic's
structured output constraints.

The transformation walks the schema AST and rewrites constructs that
Anthropic does not support natively:

- **Tuples** are converted to objects with numeric string keys (e.g.
  `"0"`, `"1"`) since Anthropic does not support tuple schemas. Rest
  elements are placed under a `"__rest__"` key.
- **Optional properties** are replaced with `T | null` unions, because
  Anthropic requires all properties to be present.
- **Records** (index signatures) are converted to arrays of `[key, value]`
  pairs.
- **`oneOf` unions** are rewritten as `anyOf` unions.
- **Filters and annotations** are preserved where compatible (e.g.
  `description`, supported `format` values like `"date-time"`, `"email"`,
  `"uuid"`, etc.), and stripped otherwise.

If the schema is already compatible, the original codec is returned
unchanged.

**Signature**

```ts
declare const toCodecAnthropic: <T, E, RD, RE>(schema: Schema.Codec<T, E, RD, RE>) => { readonly codec: Schema.Codec<T, unknown, RD, RE>; readonly jsonSchema: JsonSchema.JsonSchema; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AnthropicStructuredOutput.ts#L52)

Since v1.0.0