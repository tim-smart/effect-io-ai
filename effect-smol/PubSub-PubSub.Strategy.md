Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.Strategy

Strategy interface defining how PubSub handles backpressure and message distribution.

**Signature**

```ts
export interface Strategy<in out A> {
    /**
     * Describes any finalization logic associated with this strategy.
     */
    readonly shutdown: Effect.Effect<void>

    /**
     * Describes how publishers should signal to subscribers that they are
     * waiting for space to become available in the `PubSub`.
     */
    handleSurplus(
      pubsub: Atomic<A>,
      subscribers: Subscribers<A>,
      elements: Iterable<A>,
      isShutdown: MutableRef.MutableRef<boolean>
    ): Effect.Effect<boolean>

    /**
     * Describes how subscribers should signal to publishers waiting for space
     * to become available in the `PubSub` that space may be available.
     */
    onPubSubEmptySpaceUnsafe(
      pubsub: Atomic<A>,
      subscribers: Subscribers<A>
    ): void

    /**
     * Describes how subscribers waiting for additional values from the `PubSub`
     * should take those values and signal to publishers that they are no
     * longer waiting for additional values.
     */
    completePollersUnsafe(
      pubsub: Atomic<A>,
      subscribers: Subscribers<A>,
      subscription: BackingSubscription<A>,
      pollers: MutableList.MutableList<Deferred.Deferred<A>>
    ): void

    /**
     * Describes how publishers should signal to subscribers waiting for
     * additional values from the `PubSub` that new values are available.
     */
    completeSubscribersUnsafe(
      pubsub: Atomic<A>,
      subscribers: Subscribers<A>
    ): void
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L159)

Since v4.0.0