## fromPubSubScoped

Construct a `Channel` from a `PubSub` within a scoped effect.

**Signature**

```ts
declare const fromPubSubScoped: <Done, Err, Elem>(pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>) => Effect.Effect<Channel<Elem, unknown, Err, unknown, Done, unknown>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1123)

Since v2.0.0