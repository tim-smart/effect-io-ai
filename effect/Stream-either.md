# either

Returns a stream whose failures and successes have been lifted into an
`Either`. The resulting stream cannot fail, because the failures have been
exposed as part of the `Either` success case.

To import and use `either` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.either
```

**Signature**

```ts
export declare const either: <A, E, R>(self: Stream<A, E, R>) => Stream<Either.Either<E, A>, never, R>
```
