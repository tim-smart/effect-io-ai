Package: `effect`<br />
Module: `Console`<br />

## Console.consoleWith

Creates an Effect that provides access to the current console instance.

This function allows you to access the console service and perform operations
with it within an Effect context.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L154)

Since v2.0.0