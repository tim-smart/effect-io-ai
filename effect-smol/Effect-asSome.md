Package: `effect`<br />
Module: `Effect`<br />

## Effect.asSome

This function maps the success value of an `Effect` value to a `Some` value
in an `Option` value. If the original `Effect` value fails, the returned
`Effect` value will also fail.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.asSome(Effect.succeed(42))

Effect.runPromise(program).then(console.log)
// { _id: 'Option', _tag: 'Some', value: 42 }
```

**Signature**

```ts
declare const asSome: <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2484)

Since v2.0.0