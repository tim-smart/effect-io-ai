Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.SubscriptionRef.Variance

Type-level variance marker for the value type carried by a
`SubscriptionRef`.

**Signature**

```ts
export interface Variance<in out A> {
    readonly [TypeId]: {
      readonly _A: Invariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L71)

Since v2.0.0