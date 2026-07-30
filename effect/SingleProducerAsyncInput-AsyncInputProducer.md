Package: `effect`<br />
Module: `SingleProducerAsyncInput`<br />

## SingleProducerAsyncInput.AsyncInputProducer

Producer-side view of `SingleProducerAsyncInput` for variance purposes.

**Signature**

```ts
export interface AsyncInputProducer<in Err, in Elem, in Done> {
  awaitRead(): Effect.Effect<unknown>
  done(value: Done): Effect.Effect<unknown>
  emit(element: Elem): Effect.Effect<unknown>
  error(cause: Cause.Cause<Err>): Effect.Effect<unknown>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SingleProducerAsyncInput.ts#L42)

Since v2.0.0