Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.done

Completes the durable deferred identified by a token with the supplied exit,
encoding the result through the deferred schemas.

**Signature**

```ts
declare const done: { <Success extends Schema.Constraint, Error extends Schema.Constraint>(options: { readonly token: Token; readonly exit: Exit.Exit<Success["Type"], Error["Type"]>; }): (self: DurableDeferred<Success, Error>) => Effect.Effect<void, never, WorkflowEngine | Success["EncodingServices"] | Error["EncodingServices"]>; <Success extends Schema.Constraint, Error extends Schema.Constraint>(self: DurableDeferred<Success, Error>, options: { readonly token: Token; readonly exit: Exit.Exit<Success["Type"], Error["Type"]>; }): Effect.Effect<void, never, WorkflowEngine | Success["EncodingServices"] | Error["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L504)

Since v4.0.0