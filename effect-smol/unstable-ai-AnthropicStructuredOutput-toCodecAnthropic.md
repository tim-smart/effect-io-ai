Package: `effect`<br />
Module: `AnthropicStructuredOutput`<br />

## AnthropicStructuredOutput.toCodecAnthropic

Converts a `Schema.Codec` to Anthropic structured-output JSON Schema and a
matching codec for model output.

**When to use**

Use when you send Effect Schema-backed structured output requests to
Anthropic and need provider-compatible JSON Schema without losing the decoded
application type.

**Details**

Returns the JSON Schema to include in the request and the codec to use when
decoding the model response. If the input schema already fits Anthropic's
supported JSON Schema subset, the original codec is returned unchanged.

**Gotchas**

- Some schemas use a provider-safe encoded shape: tuples become objects with
  numeric string keys, records become arrays of `[key, value]` pairs, and
  optional properties become required nullable properties.
- `oneOf` unions are emitted as `anyOf` unions.
- Unsupported schema kinds throw during conversion instead of producing a
  lossy schema.

**See**

- `LanguageModel.CodecTransformer` for the structured-output transformer contract
- `OpenAiStructuredOutput.toCodecOpenAI` for the OpenAI-specific transformer

**Signature**

```ts
declare const toCodecAnthropic: <T, E, RD, RE>(schema: Schema.Codec<T, E, RD, RE>) => { readonly codec: Schema.Codec<T, unknown, RD, RE>; readonly jsonSchema: JsonSchema.JsonSchema; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AnthropicStructuredOutput.ts#L81)

Since v4.0.0