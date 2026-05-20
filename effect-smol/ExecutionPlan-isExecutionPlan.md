Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.isExecutionPlan

Returns `true` if a value is an `ExecutionPlan` by checking for the
`ExecutionPlan.TypeId` marker.

**Signature**

```ts
declare const isExecutionPlan: (u: unknown) => u is ExecutionPlan<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L77)

Since v3.16.0