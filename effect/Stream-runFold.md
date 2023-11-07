# runFold

Executes a pure fold over the stream of values - reduces all elements in
the stream to a value of type `S`.

To import and use `runFold` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runFold
```

**Signature**

```ts
export declare const runFold: {
  <S, A>(s: S, f: (s: S, a: A) => S): <R, E>(self: Stream<R, E, A>) => Effect.Effect<R, E, S>
  <R, E, S, A>(self: Stream<R, E, A>, s: S, f: (s: S, a: A) => S): Effect.Effect<R, E, S>
}
```
