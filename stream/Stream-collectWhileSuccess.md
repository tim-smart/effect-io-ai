# collectWhileSuccess

Terminates the stream when encountering the first `Exit.Failure`.

To import and use `collectWhileSuccess` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectWhileSuccess
```

**Signature**

```ts
export declare const collectWhileSuccess: <R, E, E2, A>(self: Stream<R, E, Exit.Exit<E2, A>>) => Stream<R, E, A>
```
