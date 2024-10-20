# timeout

Returns an effect that will timeout this effect, failing with a `Cause.TimeoutException`
if the timeout elapses before the effect has produced a value.

If the timeout elapses without producing a value, the running effect will
be safely interrupted.

WARNING: The effect returned by this method will not itself return until
the underlying effect is actually interrupted. This leads to more
predictable resource utilization. If early return is desired, then instead
of using `effect.timeout(d)`, use `effect.disconnect.timeout(d)`, which
first disconnects the effect's interruption signal before performing the
timeout, resulting in earliest possible return, before an underlying effect
has been successfully interrupted.

To import and use `timeout` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeout
```

**Signature**

```ts
export declare const timeout: {
  (duration: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | Cause.TimeoutException, R>
  <A, E, R>(self: Effect<A, E, R>, duration: Duration.DurationInput): Effect<A, Cause.TimeoutException | E, R>
}
```
