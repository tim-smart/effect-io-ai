Package: `effect`<br />
Module: `Console`<br />

## Console.dirxml

Displays an interactive tree of descendant XML or HTML elements, which is particularly useful for inspecting DOM elements in browser environments.

**Example** (Inspecting XML-like data)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.dirxml("<user id=\"1\">Ada</user>")
})

Effect.runSync(program)
// <user id="1">Ada</user>
```

**Signature**

```ts
declare const dirxml: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L283)

Since v2.0.0