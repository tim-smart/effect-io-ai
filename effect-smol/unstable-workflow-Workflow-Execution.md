Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.Execution

Type-level marker for services associated with a specific workflow
execution tag.

**Signature**

```ts
export interface Execution<Tag extends string> {
  readonly _: unique symbol
  readonly _tag: Tag
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L218)

Since v4.0.0