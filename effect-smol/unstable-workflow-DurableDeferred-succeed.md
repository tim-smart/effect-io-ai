Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.succeed

Completes the durable deferred identified by a token with a successful
value.

**Signature**

```ts
declare const succeed: { <Success extends Schema.Top, Error extends Schema.Top>(options: { readonly token: Token; readonly value: Success["Type"]; }): (self: DurableDeferred<Success, Error>) => Effect.Effect<void, never, WorkflowEngine | Success["EncodingServices"]>; <Success extends Schema.Top, Error extends Schema.Top>(self: DurableDeferred<Success, Error>, options: { readonly token: Token; readonly value: Success["Type"]; }): Effect.Effect<void, never, WorkflowEngine | Success["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L556)

Since v4.0.0