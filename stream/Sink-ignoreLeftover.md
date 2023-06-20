# ignoreLeftover

Drains the remaining elements from the stream after the sink finishes

To import and use `ignoreLeftover` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.ignoreLeftover
```

**Signature**

```ts
export declare const ignoreLeftover: <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, never, Z>
```
