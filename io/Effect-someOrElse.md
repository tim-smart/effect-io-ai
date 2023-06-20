# someOrElse

Extracts the optional value, or returns the given 'orElse'.

To import and use `someOrElse` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.someOrElse
```

**Signature**

```ts
export declare const someOrElse: {
  <B>(orElse: LazyArg<B>): <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, E, B | A>
  <R, E, A, B>(self: Effect<R, E, Option.Option<A>>, orElse: LazyArg<B>): Effect<R, E, A | B>
}
```
