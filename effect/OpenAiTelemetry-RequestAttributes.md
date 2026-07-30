Package: `@effect/ai-openai`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.RequestAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.openai.request`.

**Signature**

```ts
export interface RequestAttributes {
  /**
   * The response format that is requested.
   */
  readonly responseFormat?: (string & {}) | WellKnownResponseFormat | null | undefined
  /**
   * The service tier requested. May be a specific tier, `default`, or `auto`.
   */
  readonly serviceTier?: (string & {}) | WellKnownServiceTier | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTelemetry.ts#L42)

Since v1.0.0