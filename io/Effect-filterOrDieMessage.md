# filterOrDieMessage

Filter the specified effect with the provided function, dying with specified
message if the predicate fails.

To import and use `filterOrDieMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrDieMessage
```

**Signature**

```ts
export declare const filterOrDieMessage: {
  <A, B extends A>(f: Refinement<A, B>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A>(f: Predicate<A>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(self: Effect<R, E, A>, f: Refinement<A, B>, message: string): Effect<R, E, B>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>, message: string): Effect<R, E, A>
}
```