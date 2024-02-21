# unfoldEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

To import and use `unfoldEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.unfoldEffect
```

**Signature**

```ts
export declare const unfoldEffect: <S, A, E, R>(
  s: S,
  f: (s: S) => Effect.Effect<Option.Option<readonly [A, S]>, E, R>
) => Stream<A, E, R>
```
