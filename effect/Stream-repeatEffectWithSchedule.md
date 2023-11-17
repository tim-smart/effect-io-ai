# repeatEffectWithSchedule

Creates a stream from an effect producing a value of type `A`, which is
repeated using the specified schedule.

To import and use `repeatEffectWithSchedule` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEffectWithSchedule
```

**Signature**

```ts
export declare const repeatEffectWithSchedule: <R, E, A, A0 extends A, R2, _>(
  effect: Effect.Effect<R, E, A>,
  schedule: Schedule.Schedule<R2, A0, _>
) => Stream<R | R2, E, A>
```
