# ignoreLeftover

Drains the remaining elements from the stream after the sink finishes

To import and use `ignoreLeftover` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.ignoreLeftover
undefined

**Signature**

```ts
export declare const ignoreLeftover: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, never, E, R>
```
