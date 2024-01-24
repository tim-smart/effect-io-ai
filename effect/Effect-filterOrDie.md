# filterOrDie

Filter the specified effect with the provided function, dying with specified
defect if the predicate fails.

To import and use `filterOrDie` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.filterOrDie
```

**Signature**

```ts
export declare const filterOrDie: {
  <A, B extends A>(
    refinement: Refinement<NoInfer<A>, B>,
    orDieWith: (a: NoInfer<A>) => unknown
  ): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A>(
    predicate: Predicate<NoInfer<A>>,
    orDieWith: (a: NoInfer<A>) => unknown
  ): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(
    self: Effect<R, E, A>,
    refinement: Refinement<A, B>,
    orDieWith: (a: A) => unknown
  ): Effect<R, E, B>
  <R, E, A>(self: Effect<R, E, A>, filter: Predicate<A>, orDieWith: (a: A) => unknown): Effect<R, E, A>
}
```
