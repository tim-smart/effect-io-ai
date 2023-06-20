# collectWhileSome

Terminates the stream when encountering the first `None`.

To import and use `collectWhileSome` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectWhileSome
```

**Signature**

```ts
export declare const collectWhileSome: <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E, A>
```
