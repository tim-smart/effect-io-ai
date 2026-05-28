Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Schema

Schema interface for `AsyncResult` values, retaining the schemas used for success values and failure errors.

**Signature**

```ts
export interface Schema<
  Success extends Schema_.Top,
  Error extends Schema_.Top
> extends
  Schema_.declareConstructor<
    AsyncResult<Success["Type"], Error["Type"]>,
    AsyncResult<Success["Encoded"], Error["Encoded"]>,
    readonly [Success, Schema_.Cause<Error, Schema_.Defect>]
  >
{
  readonly success: Success
  readonly error: Error
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L957)

Since v4.0.0