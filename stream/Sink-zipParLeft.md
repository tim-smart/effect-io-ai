# zipParLeft

Like `Sink.zipPar` but keeps only the result from this sink.

To import and use `zipParLeft` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.zipParLeft
```

**Signature**

```ts
export declare const zipParLeft: {
  <R2, E2, In, In2 extends In, L, L2, Z, Z2>(that: Sink<R2, E2, In2, L2, Z2>): <R, E>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In & In2, L | L2, Z>
  <R, E, R2, E2, In, In2 extends In, L, L2, Z, Z2>(self: Sink<R, E, In, L, Z>, that: Sink<R2, E2, In2, L2, Z2>): Sink<
    R | R2,
    E | E2,
    In & In2,
    L | L2,
    Z
  >
}
```
