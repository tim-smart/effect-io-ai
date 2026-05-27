Package: `effect`<br />
Module: `Console`<br />

## Console.consoleWith

Creates an Effect that provides access to the current console service and lets you perform operations with it within an Effect context.

**Example** (Using the current console service)

```ts
import { Console, Effect } from "effect"

const program = Console.consoleWith((console) =>
  Effect.sync(() => {
    console.log("Hello, world!")
    console.error("This is an error message")
  })
)
```

**Signature**

```ts
declare const consoleWith: <A, E, R>(f: (console: Console) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L161)

Since v2.0.0