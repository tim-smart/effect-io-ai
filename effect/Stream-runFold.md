# runFold

Executes a pure fold over the stream of values - reduces all elements in
the stream to a value of type `S`.

To import and use `runFold` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFold
undefined

**Signature**

```ts
export declare const runFold: {
  <S, A>(s: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E, Exclude<R, Scope.Scope>>
  <A, E, R, S>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Effect.Effect<S, E, Exclude<R, Scope.Scope>>
}
```
