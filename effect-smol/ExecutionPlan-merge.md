Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.merge

Combines multiple execution plans by concatenating their steps in order.

The resulting plan tries every step from the first plan, then every step from
the next plan, and so on.

**Signature**

```ts
declare const merge: <const Plans extends NonEmptyReadonlyArray<ExecutionPlan<any>>>(...plans: Plans) => ExecutionPlan<{ provides: make.PlanProvides<Plans>; input: make.PlanInput<Plans>; error: Plans[number] extends ExecutionPlan<infer T> ? T["error"] : never; requirements: Plans[number] extends ExecutionPlan<infer T> ? T["requirements"] : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L368)

Since v3.16.0