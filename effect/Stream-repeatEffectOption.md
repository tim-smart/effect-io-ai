# repeatEffectOption

Creates a stream from an effect producing values of type `A` until it fails
with `None`.

To import and use `repeatEffectOption` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectOption
```

**Example**

```ts
// In this example, we're draining an Iterator to create a stream from it
import { Stream, Effect, Option } from "effect"

const drainIterator = <A>(it: Iterator<A>): Stream.Stream<A> =>
  Stream.repeatEffectOption(
    Effect.sync(() => it.next()).pipe(
      Effect.andThen((res) => {
        if (res.done) {
          return Effect.fail(Option.none())
        }
        return Effect.succeed(res.value)
      })
    )
  )
```

**Signature**

```ts
export declare const repeatEffectOption: <A, E, R>(effect: Effect.Effect<A, Option.Option<E>, R>) => Stream<A, E, R>
```
