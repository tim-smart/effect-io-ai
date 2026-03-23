Package: `effect`<br />
Module: `Effect`<br />

## Effect.exit

Transforms an effect to encapsulate both failure and success using the `Exit`
data type.

**Details**

`exit` wraps an effect's success or failure inside an `Exit` type, allowing
you to handle both cases explicitly.

The resulting effect cannot fail because the failure is encapsulated within
the `Exit.Failure` type. The error type is set to `never`, indicating that
the effect is structured to never fail directly.

**Example**

```ts
import { Effect } from "effect"

const success = Effect.succeed(42)
const failure = Effect.fail("Something went wrong")

const program1 = Effect.exit(success)
const program2 = Effect.exit(failure)

Effect.runPromise(program1).then(console.log)
// { _id: 'Exit', _tag: 'Success', value: 42 }

Effect.runPromise(program2).then(console.log)
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: 'Something went wrong' } }
```

**See**

- `option` for a version that uses `Option` instead.
- `result` for a version that uses `Result` instead.

**Signature**

```ts
declare const exit: <A, E, R>(self: Effect<A, E, R>) => Effect<Exit.Exit<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2385)

Since v2.0.0