Package: `effect`<br />
Module: `TSubscriptionRef`<br />

## TSubscriptionRef.TSubscriptionRef

A `TSubscriptionRef<A>` is a `TRef` that can be subscribed to in order to
receive a `TDequeue<A>` of the current value and all committed changes to the value.

**Signature**

```ts
export interface TSubscriptionRef<in out A> extends TSubscriptionRef.Variance<A>, TRef.TRef<A> {
  /** @internal */
  readonly ref: TRef.TRef<A>
  /** @internal */
  readonly pubsub: TPubSub.TPubSub<A>
  /** @internal */
  modify<B>(f: (a: A) => readonly [B, A]): STM.STM<B>

  /**
   * A TDequeue containing the current value of the `Ref` as well as all changes
   * to that value.
   */
  readonly changes: STM.STM<TQueue.TDequeue<A>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSubscriptionRef.ts#L34)

Since v3.10.0