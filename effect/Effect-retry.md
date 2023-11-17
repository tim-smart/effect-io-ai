# retry

Retries with the specified retry policy. Retries are done following the
failure of the original `io` (up to a fixed maximum with `once` or `recurs`
for example), so that that `io.retry(Schedule.once)` means "execute `io`
and in case of failure, try again once".

To import and use `retry` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retry
```

**Signature**

```ts
export declare const retry: {
  <R1, E extends E0, E0, B>(policy: Schedule.Schedule<R1, E0, B>): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E extends E0, E0, A, R1, B>(self: Effect<R, E, A>, policy: Schedule.Schedule<R1, E0, B>): Effect<R | R1, E, A>
}
```
