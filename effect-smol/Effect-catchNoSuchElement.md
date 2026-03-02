Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchNoSuchElement

Catches `NoSuchElementError` failures and converts them to `Option.none`.

Success values become `Option.some`, `NoSuchElementError` becomes
`Option.none`, and all other errors are preserved.

**Example**

```ts
import { Effect, Option } from "effect"

const some = Effect.fromNullishOr(1).pipe(Effect.catchNoSuchElement)
const none = Effect.fromNullishOr(null).pipe(Effect.catchNoSuchElement)

Effect.runPromise(some).then(console.log) // { _id: 'Option', _tag: 'Some', value: 1 }
Effect.runPromise(none).then(console.log) // { _id: 'Option', _tag: 'None' }
```

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.optionFromOptional`

**Signature**

```ts
declare const catchNoSuchElement: <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, Exclude<E, Cause.NoSuchElementError>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3367)

Since v2.0.0