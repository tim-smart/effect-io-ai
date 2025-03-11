## publish

Publishes a message to the `PubSub`, returning whether the message was published
to the `PubSub`.

**Signature**

```ts
declare const publish: { <A>(value: A): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L157)

Since v2.0.0