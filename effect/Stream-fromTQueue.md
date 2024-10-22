# fromTQueue

Creates a stream from a TQueue of values

To import and use `fromTQueue` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromTQueue
```

**Signature**

```ts
export declare const fromTQueue: <A>(queue: TDequeue<A>) => Stream<A>
```
