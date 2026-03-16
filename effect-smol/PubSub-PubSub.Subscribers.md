Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.Subscribers

Internal type representing the mapping from subscriptions to their pollers.

**Signature**

```ts
type Subscribers<A> = Map<
    BackingSubscription<A>,
    Set<MutableList.MutableList<Deferred.Deferred<A>>>
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L134)

Since v4.0.0