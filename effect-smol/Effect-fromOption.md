Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromOption

Converts an `Option` to an `Effect`.

**Example**

```ts
import { Effect, Option } from "effect"

const some = Option.some(42)
const none = Option.none()

const effect1 = Effect.fromOption(some)
const effect2 = Effect.fromOption(none)

Effect.runPromise(effect1).then(console.log) // 42
Effect.runPromiseExit(effect2).then(console.log)
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: { _id: 'NoSuchElementError' } } }
```

**Signature**

```ts
declare const fromOption: <A>(option: Option<A>) => Effect<A, Cause.NoSuchElementError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1942)

Since v4.0.0