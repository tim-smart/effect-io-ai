# fromEffectOption

Creates a stream from an effect producing a value of type `A` or an empty
`Stream`.

To import and use `fromEffectOption` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromEffectOption
```

**Signature**

```ts
export declare const fromEffectOption: <R, E, A>(effect: Effect.Effect<R, Option.Option<E>, A>) => Stream<R, E, A>
```
