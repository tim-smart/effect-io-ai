Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.ConfigBase

Base type-level configuration carried by an `ExecutionPlan`.

**Details**

`provides` tracks services supplied by plan steps, `input` tracks the error
input consumed by schedules and `while` predicates, `error` tracks failures
from plan layers or predicates, and `requirements` tracks services needed to
build or run the plan.

**Signature**

```ts
type ConfigBase = {
  provides: any
  input: any
  error: any
  requirements: any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L172)

Since v4.0.0