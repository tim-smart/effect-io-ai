Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromOption

Converts an `Option` into an `Effect`.

**When to use**

Use when absence should become a typed `NoSuchElementError` in the effect error
channel.

**Details**

`Option.some` becomes a successful effect with the contained value, while
`Option.none` becomes a failed effect. By default the failure is a
`NoSuchElementError`, but you can provide an `onNone` callback to customize
the error value.

**Example** (Converting an Option into an Effect)

```ts
import { Effect, Option } from "effect"

const some = Option.some(42)
const none = Option.none()

const effect1 = Effect.fromOption(some)
const effect2 = Effect.fromOption(none)
const effect3 = Effect.fromOption(none, () => new Error("missing"))

Effect.runPromise(effect1).then(console.log) // 42
Effect.runPromiseExit(effect2).then(console.log)
// { _id: 'Exit', _tag: 'Failure', cause: { _id: 'Cause', _tag: 'Fail', failure: { _id: 'NoSuchElementError' } } }
```

**Signature**

```ts
declare const fromOption: <Arg extends Option<unknown> | LazyArg<unknown>, E = Cause.NoSuchElementError>(arg: Arg, ...rest: [Arg] extends [Option<unknown>] ? [onNone?: LazyArg<E>] : []) => [Arg] extends [Option<infer A>] ? Effect<A, E> : [Arg] extends [LazyArg<infer E>] ? <A>(option: Option<A>) => Effect<A, E> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1818)

Since v4.0.0