Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.OperationAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.operation`.

**Signature**

```ts
export interface OperationAttributes {
  readonly name?: (string & {}) | WellKnownOperationName | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L67)

Since v1.0.0