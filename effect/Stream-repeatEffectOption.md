# repeatEffectOption

Creates a stream from an effect producing values of type `A` until it fails
with `None`.

To import and use `repeatEffectOption` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectOption
```

**Signature**

```ts
export declare const repeatEffectOption: <A, E, R>(effect: Effect.Effect<A, Option.Option<E>, R>) => Stream<A, E, R>
```
