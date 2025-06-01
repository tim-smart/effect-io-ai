Package: `effect`<br />
Module: `Effect`<br />

## Effect.withExecutionPlan

Apply an `ExecutionPlan` to the effect, which allows you to fallback to
different resources in case of failure.

**Signature**

```ts
declare const withExecutionPlan: { <Input, Provides, PlanE, PlanR>(plan: ExecutionPlan<{ provides: Provides; input: Input; error: PlanE; requirements: PlanR; }>): <A, E extends Input, R>(effect: Effect<A, E, R>) => Effect<A, E | PlanE, Exclude<R, Provides> | PlanR>; <A, E extends Input, R, Provides, Input, PlanE, PlanR>(effect: Effect<A, E, R>, plan: ExecutionPlan<{ provides: Provides; input: Input; error: PlanE; requirements: PlanR; }>): Effect<A, E | PlanE, Exclude<R, Provides> | PlanR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4427)

Since v3.16.0