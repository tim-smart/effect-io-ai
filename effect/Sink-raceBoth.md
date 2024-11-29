# raceBoth

Runs both sinks in parallel on the input, returning the result or the error
from the one that finishes first.

To import and use `raceBoth` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.raceBoth
undefined

**Signature**

```ts
export declare const raceBoth: {
  <A1, In1, L1, E1, R1>(
    that: Sink<A1, In1, L1, E1, R1>,
    options?: { readonly capacity?: number | undefined } | undefined
  ): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<Either.Either<A1, A>, In & In1, L1 | L, E1 | E, R1 | R>
  <A, In, L, E, R, A1, In1, L1, E1, R1>(
    self: Sink<A, In, L, E, R>,
    that: Sink<A1, In1, L1, E1, R1>,
    options?: { readonly capacity?: number | undefined } | undefined
  ): Sink<Either.Either<A1, A>, In & In1, L | L1, E | E1, R | R1>
}
```
