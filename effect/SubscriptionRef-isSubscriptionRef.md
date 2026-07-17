Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.isSubscriptionRef

Returns `true` if the provided value is a `SubscriptionRef`.

**When to use**

Use to narrow an unknown value before calling `SubscriptionRef` operations
that require a subscription reference.

**Signature**

```ts
declare const isSubscriptionRef: (u: unknown) => u is SubscriptionRef<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L54)

Since v4.0.0