# right

Fails with the error `None` if value is `Left`.

To import and use `right` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.right
```

**Signature**

```ts
export declare const right: <R, E, A, A2>(self: Stream<R, E, Either.Either<A, A2>>) => Stream<R, Option.Option<E>, A2>
```
