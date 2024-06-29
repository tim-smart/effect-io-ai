# paginateEffect

Like `Stream.unfoldEffect` but allows the emission of values to end one step
further than the unfolding of the state. This is useful for embedding
paginated APIs, hence the name.

To import and use `paginateEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.paginateEffect
```

**Signature**

```ts
export declare const paginateEffect: <S, A, E, R>(
  s: S,
  f: (s: S) => Effect.Effect<readonly [A, Option.Option<S>], E, R>
) => Stream<A, E, R>
```
