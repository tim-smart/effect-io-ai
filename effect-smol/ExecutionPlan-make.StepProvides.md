Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make.StepProvides

Computes the intersection of services provided by a list of execution-plan
steps.

**Signature**

```ts
type StepProvides<Steps, Out> = Steps extends
    readonly [infer Step, ...infer Rest] ? StepProvides<
      Rest,
      & Out
      & (
        (Step extends { readonly provide: Context.Context<infer P> | Layer.Layer<infer P, infer _E, infer _R> } ? P
          : unknown)
      )
    > :
    Out
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L279)

Since v3.16.1