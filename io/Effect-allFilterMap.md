# allFilterMap

Evaluate each effect in the structure with `collectAll`, and collect the
results with given partial function.

To import and use `allFilterMap` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.allFilterMap
```

**Signature**

```ts
export declare const allFilterMap: {
  <A, B>(pf: (a: A) => Option.Option<B>): <R, E>(elements: Iterable<Effect<R, E, A>>) => Effect<R, E, B[]>
  <R, E, A, B>(elements: Iterable<Effect<R, E, A>>, pf: (a: A) => Option.Option<B>): Effect<R, E, B[]>
}
```
