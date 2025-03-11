## GenAI.UsageAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.usage`.

**Signature**

```ts
export interface UsageAttributes {
    readonly inputTokens?: number | null | undefined
    readonly outputTokens?: number | null | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L92)

Since v1.0.0