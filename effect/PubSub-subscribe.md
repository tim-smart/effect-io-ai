Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.subscribe

Subscribes to receive messages from the `PubSub`. The resulting subscription can
be evaluated multiple times within the scope to take a message from the `PubSub`
each time.

**Signature**

```ts
declare const subscribe: <A>(self: PubSub<A>) => Effect.Effect<Queue.Dequeue<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L182)

Since v2.0.0