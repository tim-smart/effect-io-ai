Package: `effect`<br />
Module: `Effect`<br />

## Effect.asSome

Maps the success value of an `Effect` to `Some`, preserving failures.

**Example** (Wrapping success in Option.some)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2414)

Since v2.0.0