## publishAll

Publishes all of the specified messages to the `PubSub`, returning whether they
were published to the `PubSub`.

**Signature**

```ts
declare const publishAll: { <A>(elements: Iterable<A>): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, elements: Iterable<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L169)

Since v2.0.0