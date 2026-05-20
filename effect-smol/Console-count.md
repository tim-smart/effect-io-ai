Package: `effect`<br />
Module: `Console`<br />

## Console.count

Logs and increments the counter associated with `label`, using the console's default counter when no label is provided.

**Example** (Counting repeated calls)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L219)

Since v2.0.0