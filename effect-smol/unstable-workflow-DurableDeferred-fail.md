Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.fail

Completes the durable deferred identified by a token with a typed failure.

**Signature**

```ts
declare const fail: { <Success extends Schema.Top, Error extends Schema.Top>(options: { readonly token: Token; readonly error: Error["Type"]; }): (self: DurableDeferred<Success, Error>) => Effect.Effect<void, never, WorkflowEngine | Error["EncodingServices"]>; <Success extends Schema.Top, Error extends Schema.Top>(self: DurableDeferred<Success, Error>, options: { readonly token: Token; readonly error: Error["Type"]; }): Effect.Effect<void, never, WorkflowEngine | Error["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L603)

Since v4.0.0