Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.AnyStructSchema

Schema constraint for workflow payload schemas that expose struct fields.

**Signature**

```ts
export interface AnyStructSchema extends Schema.Top {
  readonly fields: Schema.Struct.Fields
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L203)

Since v4.0.0