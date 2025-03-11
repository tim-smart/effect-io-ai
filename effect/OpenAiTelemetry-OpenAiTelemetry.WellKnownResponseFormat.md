## OpenAiTelemetry.WellKnownResponseFormat

The `gen_ai.openai.request.response_format` attribute has the following
list of well-known values.

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownResponseFormat = "json_object" | "json_schema" | "text"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTelemetry.ts#L86)

Since v1.0.0