Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make.PlanProvides

Computes the intersection of services provided by a list of execution plans.

**Signature**

```ts
type PlanProvides<Plans, Out> = Plans extends
    readonly [infer Plan, ...infer Rest] ?
    PlanProvides<Rest, Out & (Plan extends ExecutionPlan<infer T> ? T["provides"] : unknown)> :
    Out
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L302)

Since v3.16.1