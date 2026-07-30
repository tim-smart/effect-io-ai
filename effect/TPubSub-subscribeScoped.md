Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.subscribeScoped

Subscribes to receive messages from the `TPubSub`. The resulting subscription can
be evaluated multiple times within the scope to take a message from the `TPubSub`
each time.

**Signature**

```ts
declare const subscribeScoped: <A>(self: TPubSub<A>) => Effect.Effect<TQueue.TDequeue<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L191)

Since v2.0.0