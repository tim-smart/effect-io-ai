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
  ): <E, R>(
    self: Effect<A, E, R>
  ) => [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [Promise<infer A1>]
      ? Effect<A1, Cause.UnknownException | E, R>
      : Effect<X, E, R>
  <X>(
    f: NotFunction<X>
  ): <A, E, R>(
    self: Effect<A, E, R>
  ) => [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [Promise<infer A1>]
      ? Effect<A1, Cause.UnknownException | E, R>
      : Effect<X, E, R>
  <A, E, R, X>(
    self: Effect<A, E, R>,
    f: (a: NoInfer<A>) => X
  ): [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [Promise<infer A1>]
      ? Effect<A1, Cause.UnknownException | E, R>
      : Effect<X, E, R>
  <A, E, R, X>(
    self: Effect<A, E, R>,
    f: NotFunction<X>
  ): [X] extends [Effect<infer A1, infer E1, infer R1>]
    ? Effect<A1, E | E1, R | R1>
    : [X] extends [Promise<infer A1>]
      ? Effect<A1, Cause.UnknownException | E, R>
      : Effect<X, E, R>
}
```
