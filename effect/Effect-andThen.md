# andThen

Executes a sequence of two actions, typically two `Effect`s, where the second action can depend on the result of the first action.

The `that` action can take various forms:

- a value
- a function returning a value
- a promise
- a function returning a promise
- an effect
- a function returning an effect

To import and use `andThen` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.andThen
```

**Example**

```ts
import * as Effect from "effect/Effect"

assert.deepStrictEqual(Effect.runSync(Effect.succeed("aa").pipe(Effect.andThen(1))), 1)
assert.deepStrictEqual(Effect.runSync(Effect.succeed("aa").pipe(Effect.andThen((s) => s.length))), 2)

assert.deepStrictEqual(await Effect.runPromise(Effect.succeed("aa").pipe(Effect.andThen(Promise.resolve(1)))), 1)
assert.deepStrictEqual(
  await Effect.runPromise(Effect.succeed("aa").pipe(Effect.andThen((s) => Promise.resolve(s.length)))),
  2
)

assert.deepStrictEqual(Effect.runSync(Effect.succeed("aa").pipe(Effect.andThen(Effect.succeed(1)))), 1)
assert.deepStrictEqual(Effect.runSync(Effect.succeed("aa").pipe(Effect.andThen((s) => Effect.succeed(s.length)))), 2)
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
