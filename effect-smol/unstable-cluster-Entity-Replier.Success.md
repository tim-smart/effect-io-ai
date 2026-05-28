Package: `effect`<br />
Module: `Entity`<br />

## Entity.Replier.Success

Success value accepted by a `Replier` for a single RPC.

**Details**

For streaming RPCs this may be either a stream of success chunks or a dequeue
of success chunks. For non-streaming RPCs it is the RPC success value.

**Signature**

```ts
type Success<R> = Rpc.Success<R> extends Stream.Stream<infer _A, infer _E, infer _R> ?
    Stream.Stream<_A, _E | Rpc.Error<R>, _R> | Queue.Dequeue<_A, _E | Rpc.Error<R> | Cause.Done>
    : Rpc.Success<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L564)

Since v4.0.0