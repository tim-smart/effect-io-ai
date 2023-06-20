# tupled

Convert a value in a singleton array in a given effect.

To import and use `tupled` from the "Invariant" module:

```ts
import * as Invariant from '@effect/data/typeclass/Invariant'

// Can be accessed like this
Invariant.tupled
```

**Signature**

```ts
export declare const tupled: <F extends TypeLambda>(
  F: Invariant<F>
) => <R, O, E, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, [A]>
```
