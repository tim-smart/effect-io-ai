## OpenAiTelemetry.ResponseAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.openai.response`.

**Signature**

```ts
export interface ResponseAttributes {
    /**
     * The service tier used for the response.
     */
    readonly serviceTier?: string | null | undefined
    /**
     * A fingerprint to track any eventual change in the Generative AI
     * environment.
     */
    readonly systemFingerprint?: string | null | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTelemetry.ts#L64)

Since v1.0.0