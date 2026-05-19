Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.make

Creates a durable workflow definition with schemas, annotations, and
deterministic execution IDs derived from the workflow name and idempotency
key.

**Signature**

```ts
declare const make: <const Name extends string, Payload extends Schema.Struct.Fields | AnyStructSchema, Success extends Schema.Top = Schema.Void, Error extends Schema.Top = Schema.Never>(options: { readonly name: Name; readonly payload: Payload; readonly idempotencyKey: (payload: Payload extends Schema.Struct.Fields ? Schema.Struct.Type<Payload> : Payload["Type"]) => string; readonly success?: Success; readonly error?: Error; readonly suspendedRetrySchedule?: Schedule.Schedule<any, unknown> | undefined; readonly annotations?: Context.Context<never>; }) => Workflow<Name, Payload extends Schema.Struct.Fields ? Schema.Struct<Payload> : Payload, Success, Error>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L325)

Since v4.0.0