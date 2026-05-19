Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.Subscribers

Tracks the pollers currently waiting on each backing subscription.

**Notes**

This type is part of the low-level `PubSub.Strategy` contract. Most
application code should use `subscribe`, `take`, and the other `PubSub`
operations instead of manipulating subscriber maps directly.

**Signature**

```ts
type Subscribers<A> = Map<
    BackingSubscription<A>,
    Set<MutableList.MutableList<Deferred.Deferred<A>>>
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L147)

Since v4.0.0