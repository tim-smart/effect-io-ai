# raceBoth

Runs both sinks in parallel on the input, returning the result or the error
from the one that finishes first.

To import and use `raceBoth` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.raceBoth
```

**Signature**

```ts
export declare const raceBoth: {
  <R1, E1, In1, L1, Z1>(
    that: Sink<R1, E1, In1, L1, Z1>,
    options?: { readonly capacity?: number | undefined }
  ): <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R1 | R, E1 | E, In & In1, L1 | L, Either.Either<Z, Z1>>
  <R, E, In, L, Z, R1, E1, In1, L1, Z1>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R1, E1, In1, L1, Z1>,
    options?: { readonly capacity?: number | undefined }
  ): Sink<R | R1, E | E1, In & In1, L | L1, Either.Either<Z, Z1>>
}
```
