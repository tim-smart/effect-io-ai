Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.into

Runs an effect and records its exit into the durable deferred, resuming
workflows that are waiting on that deferred.

**Signature**

```ts
declare const into: { <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>): <R>(effect: Effect.Effect<Success["Type"], Error["Type"], R>) => Effect.Effect<Success["Type"], Error["Type"], R | WorkflowEngine | WorkflowInstance | Success["DecodingServices"] | Error["DecodingServices"]>; <Success extends Schema.Constraint, Error extends Schema.Constraint, R>(effect: Effect.Effect<Success["Type"], Error["Type"], R>, self: DurableDeferred<Success, Error>): Effect.Effect<Success["Type"], Error["Type"], R | WorkflowEngine | WorkflowInstance | Success["DecodingServices"] | Error["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DurableDeferred.ts#L175)

Since v4.0.0