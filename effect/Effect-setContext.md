Package: `effect`<br />
Module: `Effect`<br />

## Effect.setContext

Runs an effect with the provided context as its complete environment.

**When to use**

Use when you already have a `Context` containing every service required by
the effect and want the wrapped effect to run with exactly that context.

**Gotchas**

`setContext` replaces the current context for the wrapped effect. Services
from an outer context are not inherited unless they are also present in the
context passed to `setContext`.

**Example** (Running with a complete context)

```ts
import { Context, Effect } from "effect"

class Config extends Context.Service<Config, {
  readonly greeting: string
}>()("Config") {}

const program = Effect.gen(function*() {
  const config = yield* Effect.service(Config)
  return `${config.greeting}, World!`
})

const context = Context.make(Config, { greeting: "Hello" })

const runnable = Effect.setContext(program, context)

Effect.runPromise(runnable).then(console.log)
// Output: "Hello, World!"
```

**See**

- `provideContext` for partially satisfying an effect's context requirements.
- `updateContext` for deriving the required context from the current one.

**Signature**

```ts
declare const setContext: { <R>(context: Context.Context<R>): <A, E>(self: Effect<A, E, R>) => Effect<A, E>; <A, E, R>(self: Effect<A, E, R>, context: Context.Context<R>): Effect<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6054)

Since v4.0.0