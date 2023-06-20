# forEachOption

Applies the function `f` if the argument is non-empty and returns the
results in a new `Option<B>`.

To import and use `forEachOption` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forEachOption
```

**Signature**

```ts
export declare const forEachOption: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (option: Option.Option<A>) => Effect<R, E, Option.Option<B>>
  <R, E, A, B>(option: Option.Option<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E, Option.Option<B>>
}
```
