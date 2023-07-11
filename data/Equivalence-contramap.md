# contramap

Use `mapInput` instead.

To import and use `contramap` from the "Equivalence" module:

```ts
import * as Equivalence from '@effect/data/Equivalence'

// Can be accessed like this
Equivalence.contramap
```

**Signature**

```ts
export declare const contramap: {
  <B, A>(f: (b: B) => A): (self: Equivalence<A>) => Equivalence<B>
  <A, B>(self: Equivalence<A>, f: (b: B) => A): Equivalence<B>
}
```
