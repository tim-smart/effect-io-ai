Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromiseWith

Executes an effect as a Promise with the provided services.

**When to use**

Use when you already have a `Context` and need Promise interop that rejects on
effect failure.

**Example** (Running with services as a promise)

```ts
import { Context, Effect } from "effect"

interface Config {
  apiUrl: string
}

const Config = Context.Service<Config>("Config")

const context = Context.make(Config, {
  apiUrl: "https://api.example.com"
})

const program = Effect.gen(function*() {
  const config = yield* Config
  return `Connecting to ${config.apiUrl}`
})

Effect.runPromiseWith(context)(program).then(console.log)
```

**Signature**

```ts
declare const runPromiseWith: <R>(context: Context.Context<R>) => <A, E>(effect: Effect<A, E, R>, options?: RunOptions | undefined) => Promise<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9111)

Since v4.0.0