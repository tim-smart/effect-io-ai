Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make.StepInput

Computes the input type consumed by the `while` predicates and schedules in
a list of execution-plan steps.

**Signature**

```ts
type StepInput<Steps, Out> = Steps extends
    readonly [infer Step, ...infer Rest] ? StepInput<
      Rest,
      & Out
      & (
        & (Step extends { readonly while: (input: infer I) => infer _ } ? I : unknown)
        & (Step extends { readonly schedule: Schedule.Schedule<infer _O, infer I, infer _R> } ? I : unknown)
      )
    > :
    Out
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L306)

Since v3.16.0