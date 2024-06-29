# unwrap

Creates a sink produced from an effect.

To import and use `unwrap` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.unwrap
```

**Signature**

```ts
export declare const unwrap: <A, In, L, E2, R2, E, R>(
  effect: Effect.Effect<Sink<A, In, L, E2, R2>, E, R>
) => Sink<A, In, L, E2 | E, R2 | R>
```
