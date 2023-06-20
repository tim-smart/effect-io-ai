# sequence

Returns a default `sequence` implementation.

To import and use `sequence` from the "Traversable" module:

```ts
import * as Traversable from '@effect/data/typeclass/Traversable'

// Can be accessed like this
Traversable.sequence
```

**Signature**

```ts
export declare const sequence: <T extends TypeLambda>(
  T: Traversable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, R, O, E, A>(
  self: Kind<T, TR, TO, TE, Kind<F, R, O, E, A>>
) => Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>
```
