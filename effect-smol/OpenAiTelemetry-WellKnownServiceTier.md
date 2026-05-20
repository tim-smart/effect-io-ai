Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.WellKnownServiceTier

The `gen_ai.openai.request.service_tier` attribute has a list of
well-known values.

**Details**

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownServiceTier = "auto" | "default"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L102)

Since v4.0.0