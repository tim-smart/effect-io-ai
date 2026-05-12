Package: `effect`<br />
Module: `Effect`<br />

## Effect.option

Convert success to `Option.some` and failure to `Option.none`.

**Details**

Success values become `Option.some`, recoverable failures become
`Option.none`, and defects still fail the effect.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2259)

Since v2.0.0