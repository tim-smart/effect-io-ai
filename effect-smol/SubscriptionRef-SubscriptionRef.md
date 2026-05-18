Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.SubscriptionRef

A mutable reference whose updates are serialized and published to
subscribers.

Use `changes` to observe the current value and subsequent updates as a
stream.

**Signature**

```ts
export interface SubscriptionRef<in out A> extends SubscriptionRef.Variance<A>, Pipeable {
  value: A
  readonly semaphore: Semaphore.Semaphore
  readonly pubsub: PubSub.PubSub<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L41)

Since v2.0.0