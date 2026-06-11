Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.isExecutionPlan

Returns `true` if a value is an `ExecutionPlan` by checking for the
`ExecutionPlan.TypeId` marker.

**When to use**

Use when accepting an unknown value and you need to narrow it to an
`ExecutionPlan` before reading plan fields or passing it to plan-consuming
APIs.

**Gotchas**

This is a structural marker check; it does not validate the marker value or
the shape of the plan steps.

**See**

- `make` for constructing execution plans that satisfy this guard
- `TypeId` for the runtime marker checked by this guard

**Signature**

```ts
declare const isExecutionPlan: (u: unknown) => u is ExecutionPlan<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L62)

Since v3.16.0