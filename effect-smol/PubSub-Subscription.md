Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.Subscription

A subscription represents a consumer's connection to a PubSub, allowing them to take messages.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Subscribe within a scope for automatic cleanup
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription: PubSub.Subscription<string> = yield* PubSub.subscribe(
      pubsub
    )

    // Take individual messages
    const message = yield* PubSub.take(subscription)

    // Take multiple messages
    const messages = yield* PubSub.takeUpTo(subscription, 5)
    const allMessages = yield* PubSub.takeAll(subscription)
  }))
})
```

**Signature**

```ts
export interface Subscription<out A> extends Pipeable {
  readonly [SubscriptionTypeId]: {
    readonly _A: Covariant<A>
  }
  readonly pubsub: PubSub.Atomic<any>
  readonly subscribers: PubSub.Subscribers<any>
  readonly subscription: PubSub.BackingSubscription<A>
  readonly pollers: MutableList.MutableList<Deferred.Deferred<any>>
  readonly shutdownHook: Latch.Latch
  readonly shutdownFlag: MutableRef.MutableRef<boolean>
  readonly strategy: PubSub.Strategy<any>
  readonly replayWindow: PubSub.ReplayWindow<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L239)

Since v4.0.0