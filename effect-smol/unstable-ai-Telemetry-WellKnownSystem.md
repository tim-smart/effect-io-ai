Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.WellKnownSystem

The `gen_ai.system` attribute has the following list of well-known values.

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownSystem = | "anthropic"
  | "aws.bedrock"
  | "az.ai.inference"
  | "az.ai.openai"
  | "cohere"
  | "deepseek"
  | "gemini"
  | "groq"
  | "ibm.watsonx.ai"
  | "mistral_ai"
  | "openai"
  | "perplexity"
  | "vertex_ai"
  | "xai"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L220)

Since v4.0.0