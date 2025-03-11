## toQueue

Converts a `Channel` to a `Queue`.

**Signature**

```ts
declare const toQueue: <Done, Err, Elem>(queue: Queue.Enqueue<Either.Either<Elem, Exit.Exit<Done, Err>>>) => Channel<never, Elem, never, Err, unknown, Done>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2088)

Since v2.0.0