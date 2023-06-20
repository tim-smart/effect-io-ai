# absolve

Submerges the error case of an `Either` into the `Stream`.

To import and use `absolve` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.absolve
```

**Signature**

```ts
export declare const absolve: <R, E, A>(self: Stream<R, E, Either.Either<E, A>>) => Stream<R, E, A>
```
