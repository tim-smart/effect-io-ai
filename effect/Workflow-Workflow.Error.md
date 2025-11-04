Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.Workflow.Error

Extracts the type of the Error of a `Workflow`.

**Signature**

```ts
type Error<W> = W extends Workflow<any, any, any, infer Error>
    ? Error["Type"]
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L59)

Since v1.0.0