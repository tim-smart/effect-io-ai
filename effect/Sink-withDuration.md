# withDuration

Returns the sink that executes this one and times its execution.

To import and use `withDuration` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.withDuration
```

**Signature**

```ts
export declare const withDuration: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Sink<R, E, In, L, [Z, Duration.Duration]>
```
