Package: `effect`<br />
Module: `Console`<br />

## Console.count

Logs the number of times that this particular call to count has been called.

This function maintains a counter for each unique label and increments it
each time count is called with that label.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.count("my-counter")
  yield* Console.count("my-counter") // Will show: my-counter: 2
  yield* Console.count() // Default counter
})
```

**Signature**

```ts
declare const count: (label?: string) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L228)

Since v2.0.0