# collectWhileRight

Terminates the stream when encountering the first `Left`.

To import and use `collectWhileRight` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectWhileRight
```

**Signature**

```ts
export declare const collectWhileRight: <R, E, E2, A>(self: Stream<R, E, Either.Either<E2, A>>) => Stream<R, E, A>
```
