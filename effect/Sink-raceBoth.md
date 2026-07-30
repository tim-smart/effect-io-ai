Package: `effect`<br />
Module: `Sink`<br />

## Sink.raceBoth

Runs both sinks in parallel on the input, returning the result or the error
from the one that finishes first.

**Signature**

```ts
declare const raceBoth: { <A1, In1, L1, E1, R1>(that: Sink<A1, In1, L1, E1, R1>, options?: { readonly capacity?: number | undefined; } | undefined): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<Either.Either<A1, A>, In & In1, L1 | L, E1 | E, R1 | R>; <A, In, L, E, R, A1, In1, L1, E1, R1>(self: Sink<A, In, L, E, R>, that: Sink<A1, In1, L1, E1, R1>, options?: { readonly capacity?: number | undefined; } | undefined): Sink<Either.Either<A1, A>, In & In1, L | L1, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1192)

Since v2.0.0