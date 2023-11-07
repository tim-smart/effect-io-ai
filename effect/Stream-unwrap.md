# unwrap

Creates a stream produced from an `Effect`.

To import and use `unwrap` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.unwrap
```

**Signature**

```ts
export declare const unwrap: <R, E, R2, E2, A>(
  effect: Effect.Effect<R, E, Stream<R2, E2, A>>
) => Stream<R | R2, E | E2, A>
```
