# fromEither

Constructs a channel from an `Either`.

To import and use `fromEither` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromEither
```

**Signature**

```ts
export declare const fromEither: <R, L>(
  either: Either.Either<R, L>
) => Channel<never, unknown, L, unknown, R, unknown, never>
```
