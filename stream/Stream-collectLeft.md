# collectLeft

Filters any `Right` values.

To import and use `collectLeft` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.collectLeft
```

**Signature**

```ts
export declare const collectLeft: <R, E, E2, A>(self: Stream<R, E, Either.Either<E2, A>>) => Stream<R, E, E2>
```
