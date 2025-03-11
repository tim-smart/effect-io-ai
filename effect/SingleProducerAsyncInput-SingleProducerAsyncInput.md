## SingleProducerAsyncInput

An MVar-like abstraction for sending data to channels asynchronously which is
designed for one producer and multiple consumers.

Features the following semantics:
  - Buffer of size 1.
  - When emitting, the producer waits for a consumer to pick up the value to
    prevent "reading ahead" too much.
  - Once an emitted element is read by a consumer, it is cleared from the
    buffer, so that at most one consumer sees every emitted element.
  - When sending a done or error signal, the producer does not wait for a
    consumer to pick up the signal. The signal stays in the buffer after
    being read by a consumer, so it can be propagated to multiple consumers.
  - Trying to publish another emit/error/done after an error/done have
    already been published results in an interruption.

**Signature**

```ts
export interface SingleProducerAsyncInput<in out Err, in out Elem, in out Done>
  extends AsyncInputProducer<Err, Elem, Done>, AsyncInputConsumer<Err, Elem, Done>
{
  readonly close: Effect.Effect<unknown>
  readonly take: Effect.Effect<Exit.Exit<Elem, Either.Either<Done, Err>>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SingleProducerAsyncInput.ts#L29)

Since v2.0.0