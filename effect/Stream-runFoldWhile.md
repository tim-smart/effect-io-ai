# runFoldWhile

Reduces the elements in the stream to a value of type `S`. Stops the fold
early when the condition is not fulfilled. Example:

To import and use `runFoldWhile` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldWhile
```

**Signature**

```ts
export declare const runFoldWhile: {
  <S, A>(s: S, cont: Predicate<S>, f: (s: S, a: A) => S): <R, E>(self: Stream<R, E, A>) => Effect.Effect<R, E, S>
  <R, E, S, A>(self: Stream<R, E, A>, s: S, cont: Predicate<S>, f: (s: S, a: A) => S): Effect.Effect<R, E, S>
}
```
