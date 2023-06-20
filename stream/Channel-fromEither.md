# fromEither

Constructs a channel from an `Either`.

To import and use `fromEither` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.fromEither
```

**Signature**

```ts
export declare const fromEither: <E, A>(
  either: Either.Either<E, A>
) => Channel<never, unknown, unknown, unknown, E, never, A>
```
