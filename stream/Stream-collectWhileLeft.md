# collectWhileLeft

Terminates the stream when encountering the first `Right`.

To import and use `collectWhileLeft` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectWhileLeft
```

**Signature**

```ts
export declare const collectWhileLeft: <R, E, E2, A>(self: Stream<R, E, Either.Either<E2, A>>) => Stream<R, E, E2>
```
