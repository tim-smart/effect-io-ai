# make

Creates a new `SubscriptionRef` with the specified value.

To import and use `make` from the "SubscriptionRef" module:

ts
import \* as SubscriptionRef from "effect/SubscriptionRef"
// Can be accessed like this
SubscriptionRef.make
undefined

**Signature**

```ts
export declare const make: <A>(value: A) => Effect.Effect<SubscriptionRef<A>>
```
