# once

Returns an effect that will be executed at most once, even if it is
evaluated multiple times.

To import and use `once` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.once
```

**Example**

```ts
import { Effect, Console } from "effect"

const program = Effect.gen(function* (_) {
  const twice = Console.log("twice")
  yield* _(twice, Effect.repeatN(1))
  const once = yield* _(Console.log("once"), Effect.once)
  yield* _(once, Effect.repeatN(1))
})

Effect.runFork(program)
// Output:
// twice
// twice
// once
```

**Signature**

```ts
export declare const once: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<void, E, R>, never, never>
```
