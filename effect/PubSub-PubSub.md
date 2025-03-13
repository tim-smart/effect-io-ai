Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub

A `PubSub<A>` is an asynchronous message hub into which publishers can publish
messages of type `A` and subscribers can subscribe to take messages of type
`A`.

**Signature**

```ts
export interface PubSub<in out A> extends Queue.Enqueue<A>, Pipeable {
  /**
   * Publishes a message to the `PubSub`, returning whether the message was published
   * to the `PubSub`.
   */
  publish(value: A): Effect.Effect<boolean>

  /**
   * Publishes all of the specified messages to the `PubSub`, returning whether they
   * were published to the `PubSub`.
   */
  publishAll(elements: Iterable<A>): Effect.Effect<boolean>

  /**
   * Subscribes to receive messages from the `PubSub`. The resulting subscription can
   * be evaluated multiple times within the scope to take a message from the `PubSub`
   * each time.
   */
  readonly subscribe: Effect.Effect<Queue.Dequeue<A>, never, Scope.Scope>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L18)

Since v2.0.0