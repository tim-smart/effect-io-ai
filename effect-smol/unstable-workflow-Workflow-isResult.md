Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.isResult

Returns `true` when a value is a workflow `Result`.

**Signature**

```ts
declare const isResult: <A = unknown, E = unknown>(u: unknown) => u is Result<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L483)

Since v4.0.0