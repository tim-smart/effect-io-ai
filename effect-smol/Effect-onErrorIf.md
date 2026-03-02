Package: `effect`<br />
Module: `Effect`<br />

## Effect.onErrorIf

Runs the finalizer only when this effect fails and the `Cause` matches the
provided predicate.

**Example**

```ts
import { Cause, Console, Effect } from "effect"

const task = Effect.fail("boom")

const program = Effect.onErrorIf(
  task,
  Cause.hasFails,
  (cause) =>
    Effect.gen(function*() {
      yield* Console.log(`Cause: ${Cause.pretty(cause)}`)
    })
)
```

**Signature**

```ts
declare const onErrorIf: { <E, XE, XR>(predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<void, XE, XR>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Effect<A, E, R>, predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6410)

Since v4.0.0