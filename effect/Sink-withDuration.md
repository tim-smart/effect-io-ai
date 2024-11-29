# withDuration

Returns the sink that executes this one and times its execution.

To import and use `withDuration` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.withDuration
undefined

**Signature**

```ts
export declare const withDuration: <A, In, L, E, R>(
  self: Sink<A, In, L, E, R>
) => Sink<[A, Duration.Duration], In, L, E, R>
```
