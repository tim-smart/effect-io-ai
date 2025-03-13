Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.GenAI.BaseAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai`.

**Signature**

```ts
export interface BaseAttributes {
    /**
     * The Generative AI product as identified by the client or server
     * instrumentation.
     */
    readonly system?: (string & {}) | WellKnownSystem | null | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L55)

Since v1.0.0