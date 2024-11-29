# repeatEffectWithSchedule

Creates a stream from an effect producing a value of type `A`, which is
repeated using the specified schedule.

To import and use `repeatEffectWithSchedule` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectWithSchedule
undefined

**Signature**

```ts
export declare const repeatEffectWithSchedule: <A, E, R, X, A0 extends A, R2>(
  effect: Effect.Effect<A, E, R>,
  schedule: Schedule.Schedule<X, A0, R2>
) => Stream<A, E, R | R2>
```
