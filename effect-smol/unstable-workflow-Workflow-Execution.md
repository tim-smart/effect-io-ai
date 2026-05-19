Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.Execution

Type-level marker for services associated with a specific workflow
execution name.

**Signature**

```ts
export interface Execution<Name extends string> {
  readonly _: unique symbol
  readonly name: Name
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L211)

Since v4.0.0