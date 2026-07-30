Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.SubscriptionRef

A `SubscriptionRef<A>` is a `Ref` that can be subscribed to in order to
receive the current value as well as all changes to the value.

**Signature**

```ts
export interface SubscriptionRef<in out A>
  extends SubscriptionRef.Variance<A>, Synchronized.SynchronizedRef<A>, Subscribable<A>
{
  /** @internal */
  readonly ref: Ref.Ref<A>
  /** @internal */
  readonly pubsub: PubSub.PubSub<A>
  /** @internal */
  readonly semaphore: Effect.Semaphore
  /**
   * A stream containing the current value of the `Ref` as well as all changes
   * to that value.
   */
  readonly changes: Stream.Stream<A>
  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: SubscriptionRefUnify<this>
  readonly [Unify.ignoreSymbol]?: SubscriptionRefUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L34)

Since v2.0.0