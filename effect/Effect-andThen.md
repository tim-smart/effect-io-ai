# andThen

Executes a sequence of two `Effect`s. The second `Effect` can be dependent on the result of the first `Effect`.

To import and use `andThen` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.andThen
```

**Signature**

```ts
export declare const andThen: {
  <A, X>(
    f: (a: NoInfer<A>) => X
  ): <R, E>(
    self: Effect<R, E, A>
  ) => [X] extends [Effect<infer R1, infer E1, infer A1>]
    ? Effect<R | R1, E | E1, A1>
    : [X] extends [Promise<infer A1>]
      ? Effect<R, Cause.UnknownException | E, A1>
      : Effect<R, E, X>
  <X>(
    f: X
  ): <R, E, A>(
    self: Effect<R, E, A>
  ) => [X] extends [Effect<infer R1, infer E1, infer A1>]
    ? Effect<R | R1, E | E1, A1>
    : [X] extends [Promise<infer A1>]
      ? Effect<R, Cause.UnknownException | E, A1>
      : Effect<R, E, X>
  <A, R, E, X>(
    self: Effect<R, E, A>,
    f: (a: NoInfer<A>) => X
  ): [X] extends [Effect<infer R1, infer E1, infer A1>]
    ? Effect<R | R1, E | E1, A1>
    : [X] extends [Promise<infer A1>]
      ? Effect<R, Cause.UnknownException | E, A1>
      : Effect<R, E, X>
  <A, R, E, X>(
    self: Effect<R, E, A>,
    f: X
  ): [X] extends [Effect<infer R1, infer E1, infer A1>]
    ? Effect<R | R1, E | E1, A1>
    : [X] extends [Promise<infer A1>]
      ? Effect<R, Cause.UnknownException | E, A1>
      : Effect<R, E, X>
}
```
