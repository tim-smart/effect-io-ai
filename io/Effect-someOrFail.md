# someOrFail

Extracts the optional value, or fails with the given error 'e'.

To import and use `someOrFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.someOrFail
```

**Signature**

```ts
export declare const someOrFail: {
  <E2>(orFail: LazyArg<E2>): <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, E2 | E, A>
  <R, E, A, E2>(self: Effect<R, E, Option.Option<A>>, orFail: LazyArg<E2>): Effect<R, E | E2, A>
}
```
