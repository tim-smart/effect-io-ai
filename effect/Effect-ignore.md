# ignore

Discards both the success and failure values of an effect.

**When to Use**

`ignore` allows you to run an effect without caring about its result, whether
it succeeds or fails. This is useful when you only care about the side
effects of the effect and do not need to handle or process its outcome.

To import and use `ignore` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ignore
```

**Example**

```ts
// Title: Using Effect.ignore to Discard Values
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const task = Effect.fail("Uh oh!").pipe(Effect.as(5))

//      ┌─── Effect<void, never, never>
//      ▼
const program = Effect.ignore(task)
```

**Signature**

```ts
export declare const ignore: <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```
