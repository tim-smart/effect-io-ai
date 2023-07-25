# zipWith

Feeds inputs to this sink until it yields a result, then switches over to
the provided sink until it yields a result, finally combining the two
results with `f`.

To import and use `zipWith` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <R2, E2, In, In2 extends In, L, L2, Z, Z2, Z3>(
    that: Sink<R2, E2, In2, L2, Z2>,
    f: (z: Z, z1: Z2) => Z3,
    options?: { readonly concurrent?: boolean }
  ): <R, E>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In & In2, L | L2, Z3>
  <R, E, R2, E2, In, In2 extends In, L, L2, Z, Z2, Z3>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R2, E2, In2, L2, Z2>,
    f: (z: Z, z1: Z2) => Z3,
    options?: { readonly concurrent?: boolean }
  ): Sink<R | R2, E | E2, In & In2, L | L2, Z3>
}
```
