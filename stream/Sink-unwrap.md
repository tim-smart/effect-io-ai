# unwrap

Creates a sink produced from an effect.

To import and use `unwrap` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.unwrap
```

**Signature**

```ts
export declare const unwrap: <R, E, R2, E2, In, L, Z>(
  effect: Effect.Effect<R, E, Sink<R2, E2, In, L, Z>>
) => Sink<R | R2, E | E2, In, L, Z>
```
