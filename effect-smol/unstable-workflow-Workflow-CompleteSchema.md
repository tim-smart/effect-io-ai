Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.CompleteSchema

Schema constructor for `Complete` workflow results using the supplied
success and error schemas.

**Signature**

```ts
export interface CompleteSchema<
  Success extends Schema.Top,
  Error extends Schema.Top
> extends
  Schema.declareConstructor<
    Complete<Success["Type"], Error["Type"]>,
    Complete<Success["Encoded"], Error["Encoded"]>,
    readonly [Schema.Exit<Success, Error, Schema.Defect>]
  >
{
  readonly success: Success
  readonly error: Error
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L513)

Since v4.0.0