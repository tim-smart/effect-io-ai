Package: `effect`<br />
Module: `Activity`<br />

## Activity.Activity

Durable workflow activity that behaves as an `Effect` and records its name,
result schemas, annotations, and encoded execution form for the workflow
engine.

**Signature**

```ts
export interface Activity<
  Success extends Schema.Constraint = Schema.Void,
  Error extends Schema.Constraint = Schema.Never,
  R = never
> extends
  Effect.Effect<
    Success["Type"],
    Error["Type"],
    Success["DecodingServices"] | Error["DecodingServices"] | R | WorkflowEngine | WorkflowInstance
  >
{
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly successSchema: Success
  readonly errorSchema: Error
  readonly exitSchema: Schema.Exit<Success, Error, Schema.Defect>
  readonly exitSchemaPartial: Schema.Exit<Success, Error, Schema.Unknown>
  readonly annotations: Context.Context<never>
  annotate<I, S>(
    key: Context.Key<I, S>,
    value: S
  ): Activity<Success, Error, R>
  annotateMerge<I>(
    annotations: Context.Context<I>
  ): Activity<Success, Error, R>
  readonly execute: Effect.Effect<
    Success["Type"],
    Error["Type"],
    | Success["DecodingServices"]
    | Success["EncodingServices"]
    | Error["DecodingServices"]
    | Error["EncodingServices"]
    | R
    | Scope
    | WorkflowEngine
    | WorkflowInstance
  >
  readonly executeEncoded: Effect.Effect<
    unknown,
    unknown,
    | Success["DecodingServices"]
    | Success["EncodingServices"]
    | Error["DecodingServices"]
    | Error["EncodingServices"]
    | R
    | Scope
    | WorkflowEngine
    | WorkflowInstance
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L36)

Since v4.0.0