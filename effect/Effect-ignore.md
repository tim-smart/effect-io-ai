Package: `effect`<br />
Module: `Effect`<br />

## Effect.ignore

Discards both the success and failure values of an effect.

**When to Use**

`ignore` allows you to run an effect without caring about its result, whether
it succeeds or fails. This is useful when you only care about the side
effects of the effect and do not need to handle or process its outcome.

**Example** (Using Effect.ignore to Discard Values)

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const task = Effect.fail("Uh oh!").pipe(Effect.as(5))

//      ┌─── Effect<void, never, never>
//      ▼
const program = Effect.ignore(task)
```

**See**

- `ignoreLogged` to log failures while ignoring them.

**Signature**

```ts
declare const ignore: <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4117)

Since v2.0.0