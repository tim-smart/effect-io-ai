Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchNoSuchElement

Catches `NoSuchElementError` failures and converts them to `Option.none`.

**When to use**

Use to convert `NoSuchElementError` failures into `Option.none`.

**Details**

Success values become `Option.some`, `NoSuchElementError` becomes
`Option.none`, and all other errors are preserved.

**Example** (Recovering from missing Option values)

```ts
import { Effect, Option } from "effect"

const some = Effect.fromNullishOr(1).pipe(Effect.catchNoSuchElement)
const none = Effect.fromNullishOr(null).pipe(Effect.catchNoSuchElement)

Effect.runPromise(some).then(console.log) // { _id: 'Option', _tag: 'Some', value: 1 }
Effect.runPromise(none).then(console.log) // { _id: 'Option', _tag: 'None' }
```

**See**

- `fromOption` for converting `Option.none` into `NoSuchElementError`
- `fromNullishOr` for converting nullish values into `NoSuchElementError`
- `option` for converting any failure into `Option.none`

**Signature**

```ts
declare const catchNoSuchElement: <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, Exclude<E, Cause.NoSuchElementError>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3403)

Since v4.0.0