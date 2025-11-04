Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.Workflow.Success

Extracts the type of the Success of a `Workflow`.

**Signature**

```ts
type Success<W> = W extends Workflow<any, any, infer Success, any>
    ? Success["Type"]
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L49)

Since v1.0.0