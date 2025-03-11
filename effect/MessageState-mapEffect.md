## mapEffect

Effectfully transform the <A> type of the MessageState<A>.

**Signature**

```ts
declare const mapEffect: <A, B, R, E>(value: MessageState<A>, fn: (value: A) => Effect.Effect<B, E, R>) => Effect.Effect<MessageState<B>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/MessageState.ts#L112)

Since v1.0.0