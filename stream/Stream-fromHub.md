# fromHub

Creates a stream from a subscription to a `Hub`.

To import and use `fromHub` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromHub
```

**Signature**

```ts
export declare const fromHub: <A>(hub: Hub.Hub<A>, maxChunkSize?: number) => Stream<never, never, A>
```
