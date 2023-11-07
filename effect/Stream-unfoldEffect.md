# unfoldEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

To import and use `unfoldEffect` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.unfoldEffect
```

**Signature**

```ts
export declare const unfoldEffect: <S, R, E, A>(
  s: S,
  f: (s: S) => Effect.Effect<R, E, Option.Option<readonly [A, S]>>
) => Stream<R, E, A>
```
