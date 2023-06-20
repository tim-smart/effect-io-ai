# unfold

Constructs a `Arrat` by repeatedly applying the effectual function `f` as
long as it returns `Some`.

To import and use `unfold` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unfold
```

**Signature**

```ts
export declare const unfold: <A, R, E, S>(
  s: S,
  f: (s: S) => Effect<R, E, Option.Option<readonly [A, S]>>
) => Effect<R, E, A[]>
```
