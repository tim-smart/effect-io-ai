Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.await

Waits for the durable deferred, suspending the current workflow when no
persisted completion is available.

**Signature**

```ts
declare const await: <Success extends Schema.Top, Error extends Schema.Top>(self: DurableDeferred<Success, Error>) => Effect.Effect<Success["Type"], Error["Type"], WorkflowEngine | WorkflowInstance | Success["DecodingServices"] | Error["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L165)

Since v4.0.0