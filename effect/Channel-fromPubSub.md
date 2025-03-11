## fromPubSub

Construct a `Channel` from a `PubSub`.

**Signature**

```ts
declare const fromPubSub: <Done, Err, Elem>(pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1113)

Since v2.0.0