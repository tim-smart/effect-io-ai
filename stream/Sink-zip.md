# zip

Feeds inputs to this sink until it yields a result, then switches over to
the provided sink until it yields a result, finally combining the two
results into a tuple.

To import and use `zip` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.zip
```

**Signature**

```ts
export declare const zip: {
  <R2, E2, In, In2 extends In, L, L2, Z, Z2>(
    that: Sink<R2, E2, In2, L2, Z2>,
    options?: { readonly concurrent?: boolean }
  ): <R, E>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In & In2, L | L2, readonly [Z, Z2]>
  <R, E, R2, E2, In, In2 extends In, L, L2, Z, Z2>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R2, E2, In2, L2, Z2>,
    options?: { readonly concurrent?: boolean }
  ): Sink<R | R2, E | E2, In & In2, L | L2, readonly [Z, Z2]>
}
```
