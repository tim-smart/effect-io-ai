# collectAllWhileWith

Repeatedly runs the sink for as long as its results satisfy the predicate
`p`. The sink's results will be accumulated using the stepping function `f`.

To import and use `collectAllWhileWith` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.collectAllWhileWith
```

**Signature**

```ts
export declare const collectAllWhileWith: {
  <Z, S>(z: S, p: Predicate<Z>, f: (s: S, z: Z) => S): <R, E, In, L extends In>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In, L, S>
  <R, E, In, L extends In, Z, S>(self: Sink<R, E, In, L, Z>, z: S, p: Predicate<Z>, f: (s: S, z: Z) => S): Sink<
    R,
    E,
    In,
    L,
    S
  >
}
```
