Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.tokenFromExecutionId

Creates a durable deferred token from an explicit workflow, execution ID,
and deferred name.

**Signature**

```ts
declare const tokenFromExecutionId: { (options: { readonly workflow: Workflow.Any; readonly executionId: string; }): <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>) => Token; <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>, options: { readonly workflow: Workflow.Any; readonly executionId: string; }): Token; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DurableDeferred.ts#L425)

Since v4.0.0