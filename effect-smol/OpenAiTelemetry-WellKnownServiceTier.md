Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.WellKnownServiceTier

The `gen_ai.openai.request.service_tier` attribute has the following
list of well-known values.

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownServiceTier = "auto" | "default"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L99)

Since v1.0.0