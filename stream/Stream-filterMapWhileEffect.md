# filterMapWhileEffect

Effectfully transforms all elements of the stream for as long as the
specified partial function is defined.

To import and use `filterMapWhileEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.filterMapWhileEffect
```

**Signature**

```ts
export declare const filterMapWhileEffect: <A, R2, E2, A2>(
  pf: (a: A) => Option.Option<Effect.Effect<R2, E2, A2>>
) => <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
```
