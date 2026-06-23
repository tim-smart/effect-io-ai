Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.token

Creates a token for a durable deferred using the current workflow instance's
workflow name and execution ID.

**Signature**

```ts
declare const token: <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>) => Effect.Effect<Token, never, WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L407)

Since v4.0.0