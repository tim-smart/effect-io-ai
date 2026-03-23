Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromResult

Converts a `Result` to an `Effect`.

**Example**

```ts
import { Effect, Result } from "effect"

const success = Result.succeed(42)
const failure = Result.fail("Something went wrong")

const effect1 = Effect.fromResult(success)
const effect2 = Effect.fromResult(failure)

Effect.runPromise(effect1).then(console.log) // 42
Effect.runPromiseExit(effect2).then(console.log)
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: 'Something went wrong' } }
```

**Signature**

```ts
declare const fromResult: <A, E>(result: Result.Result<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1909)

Since v4.0.0