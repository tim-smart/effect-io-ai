# retry

Retries according to the options provided

To import and use `retry` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retry
```

**Signature**

```ts
export declare const retry: {
  <E, O extends Retry.Options<E>>(options: O): <A, R>(self: Effect<A, E, R>) => Retry.Return<R, E, A, O>
  <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>
  <A, E, R, O extends Retry.Options<E>>(self: Effect<A, E, R>, options: O): Retry.Return<R, E, A, O>
  <A, E, R, B, R1>(self: Effect<A, E, R>, policy: Schedule.Schedule<B, E, R1>): Effect<A, E, R1 | R>
}
```
