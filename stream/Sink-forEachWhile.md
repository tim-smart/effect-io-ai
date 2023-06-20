# forEachWhile

A sink that executes the provided effectful function for every element fed
to it until `f` evaluates to `false`.

To import and use `forEachWhile` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.forEachWhile
```

**Signature**

```ts
export declare const forEachWhile: <In, R, E>(
  f: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, void>
```
