# collectRight

Filters any `Left` values.

To import and use `collectRight` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectRight
```

**Signature**

```ts
export declare const collectRight: <R, E, E2, A>(self: Stream<R, E, Either.Either<E2, A>>) => Stream<R, E, A>
```
