Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.UsageAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.usage`.

**Signature**

```ts
export interface UsageAttributes {
  readonly inputTokens?: number | null | undefined
  readonly outputTokens?: number | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L119)

Since v4.0.0