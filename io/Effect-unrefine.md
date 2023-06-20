# unrefine

Takes some fiber failures and converts them into errors.

To import and use `unrefine` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unrefine
```

**Signature**

```ts
export declare const unrefine: {
  <E1>(pf: (u: unknown) => Option.Option<E1>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (u: unknown) => Option.Option<E1>): Effect<R, E | E1, A>
}
```
