Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.OperationAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.operation`.

**Signature**

```ts
export interface OperationAttributes {
  readonly name?: (string & {}) | WellKnownOperationName | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L97)

Since v4.0.0