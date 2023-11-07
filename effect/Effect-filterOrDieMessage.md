# filterOrDieMessage

Filter the specified effect with the provided function, dying with specified
message if the predicate fails.

To import and use `filterOrDieMessage` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.filterOrDieMessage
```

**Signature**

```ts
export declare const filterOrDieMessage: {
  <A, B extends A>(filter: Refinement<A, B>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A, X extends A>(filter: Predicate<X>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(self: Effect<R, E, A>, filter: Refinement<A, B>, message: string): Effect<R, E, B>
  <R, E, A, X extends A>(self: Effect<R, E, A>, filter: Predicate<X>, message: string): Effect<R, E, A>
}
```
