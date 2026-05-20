Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.failCause

Completes the durable deferred identified by a token with a failure cause.

**Signature**

```ts
declare const failCause: { <Success extends Schema.Top, Error extends Schema.Top>(options: { readonly token: Token; readonly cause: Cause.Cause<Error["Type"]>; }): (self: DurableDeferred<Success, Error>) => Effect.Effect<void, never, WorkflowEngine | Error["EncodingServices"]>; <Success extends Schema.Top, Error extends Schema.Top>(self: DurableDeferred<Success, Error>, options: { readonly token: Token; readonly cause: Cause.Cause<Error["Type"]>; }): Effect.Effect<void, never, WorkflowEngine | Error["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L638)

Since v4.0.0