# TSubscriptionRef

A `TSubscriptionRef<A>` is a `TRef` that can be subscribed to in order to
receive a `TDequeue<A>` of the current value and all committed changes to the value.

To import and use `TSubscriptionRef` from the "TSubscriptionRef" module:

ts
import \* as TSubscriptionRef from "effect/TSubscriptionRef"
// Can be accessed like this
TSubscriptionRef.TSubscriptionRef
undefined
