Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.tokenFromPayload

Creates a durable deferred token by deriving the workflow execution ID from
the supplied workflow payload.

**Signature**

```ts
declare const tokenFromPayload: { <W extends Workflow.Any>(options: { readonly workflow: W; readonly payload: Workflow.PayloadSchema<W>["~type.make.in"]; }): <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>) => Effect.Effect<Token>; <Success extends Schema.Constraint, Error extends Schema.Constraint, W extends Workflow.Any>(self: DurableDeferred<Success, Error>, options: { readonly workflow: W; readonly payload: Workflow.PayloadSchema<W>["~type.make.in"]; }): Effect.Effect<Token>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L459)

Since v4.0.0