# unwrap

Creates a stream produced from an `Effect`.

To import and use `unwrap` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.unwrap
```

**Signature**

```ts
export declare const unwrap: <A, E2, R2, E, R>(
  effect: Effect.Effect<Stream<A, E2, R2>, E, R>
) => Stream<A, E | E2, R | R2>
```
