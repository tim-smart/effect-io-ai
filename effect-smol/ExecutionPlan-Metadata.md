Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.Metadata

Metadata describing the currently running execution-plan attempt.

**Details**

`attempt` is the current 1-based attempt number, and `stepIndex` is the
0-based index of the plan step currently being evaluated.

**Signature**

```ts
export interface Metadata {
  readonly attempt: number
  readonly stepIndex: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L394)

Since v4.0.0