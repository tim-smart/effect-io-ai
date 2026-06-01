Package: `effect`<br />
Module: `OpenAiStructuredOutput`<br />

## OpenAiStructuredOutput.toCodecOpenAI

Converts a `Schema.Codec` to OpenAI structured-output JSON Schema and a
matching codec for model output.

**When to use**

Use when you send Effect Schema-backed structured output requests to OpenAI
and need provider-compatible JSON Schema without losing the decoded
application type.

**Details**

Returns the JSON Schema to include in the request and the codec to use when
decoding the model response. If the input schema already fits OpenAI's
supported JSON Schema subset, the original codec is returned unchanged.

**Gotchas**

- Some schemas use a provider-safe encoded shape: tuples become objects with
  numeric string keys, records become arrays of `[key, value]` pairs, and
  optional properties become required nullable properties.
- `oneOf` unions are emitted as `anyOf` unions.
- Regex patterns from multiple filters are merged into one `pattern` because
  OpenAI structured output does not support `allOf`.
- Unsupported schema kinds throw during conversion instead of producing a
  lossy schema.

**Signature**

```ts
declare const toCodecOpenAI: <T, E, RD, RE>(schema: Schema.Codec<T, E, RD, RE>) => { codec: Schema.Codec<T, unknown, RD, RE>; jsonSchema: JsonSchema.JsonSchema; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenAiStructuredOutput.ts#L93)

Since v4.0.0