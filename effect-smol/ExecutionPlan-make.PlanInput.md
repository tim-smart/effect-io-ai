Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make.PlanInput

Computes the combined input type consumed by a list of execution plans.

**Signature**

```ts
type PlanInput<Plans, Out> = Plans extends
    readonly [infer Plan, ...infer Rest] ?
    PlanInput<Rest, Out & (Plan extends ExecutionPlan<infer T> ? T["input"] : unknown)> :
    Out
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L334)

Since v3.16.0