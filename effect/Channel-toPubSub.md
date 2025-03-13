Package: `effect`<br />
Module: `Channel`<br />

## Channel.toPubSub

Converts a `Channel` to a `PubSub`.

**Signature**

```ts
declare const toPubSub: <Done, Err, Elem>(pubsub: PubSub.PubSub<Either.Either<Elem, Exit.Exit<Done, Err>>>) => Channel<never, Elem, never, Err, unknown, Done>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2043)

Since v2.0.0