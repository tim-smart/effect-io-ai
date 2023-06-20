# getOrFailWith

Lifts an `Maybe` into an `Effect`. If the option is not defined, fail with
the specified `e` value.

To import and use `getOrFailWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.getOrFailWith
```

**Signature**

```ts
export declare const getOrFailWith: {
  <E>(error: LazyArg<E>): <A>(option: Option.Option<A>) => Effect<never, E, A>
  <A, E>(option: Option.Option<A>, error: LazyArg<E>): Effect<never, E, A>
}
```
