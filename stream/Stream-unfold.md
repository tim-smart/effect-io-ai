# unfold

Creates a stream by peeling off the "layers" of a value of type `S`.

To import and use `unfold` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.unfold
```

**Signature**

```ts
export declare const unfold: <S, A>(s: S, f: (s: S) => Option.Option<readonly [A, S]>) => Stream<never, never, A>
```
