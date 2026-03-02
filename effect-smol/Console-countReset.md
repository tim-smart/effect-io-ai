Package: `effect`<br />
Module: `Console`<br />

## Console.countReset

Resets the counter for the given label.

This function resets the counter associated with the specified label
back to zero.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.count("my-counter")
  yield* Console.count("my-counter") // Will show: my-counter: 2
  yield* Console.countReset("my-counter")
  yield* Console.count("my-counter") // Will show: my-counter: 1
})
```

**Signature**

```ts
declare const countReset: (label?: string) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L256)

Since v2.0.0