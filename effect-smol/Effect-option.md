Package: `effect`<br />
Module: `Effect`<br />

## Effect.option

Converts success to `Option.some` and failure to `Option.none`.

**When to use**

Use when the failure value is not important and absence is enough.
Use `result` when you need the original typed failure, and `exit` when you
need the full failure cause.

**Details**

Success values become `Option.some`, recoverable failures become
`Option.none`, and defects still fail the effect.

**Gotchas**

`option` only captures typed, recoverable failures as `Option.none`.
Defects and interruptions are not captured inside the `Option` and still
fail the effect.

`option` also discards typed failure values. Use `result` if the failure
value matters.

**Example** (Capturing success or failure as Option)

```ts
import { Console, Effect, Option } from "effect"

const program = Effect.gen(function*() {
  const someValue = yield* Effect.option(Effect.succeed(1))
  const noneValue = yield* Effect.option(Effect.fail("missing"))

  yield* Console.log(Option.isSome(someValue))
  yield* Console.log(Option.isNone(noneValue))
})

Effect.runPromise(program)
// true
// true
```

**See**

- `result` for a version that uses `Result` instead.
- `exit` for a version that encapsulates both recoverable errors and defects in an `Exit`.

**Signature**

```ts
declare const option: <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2261)

Since v2.0.0