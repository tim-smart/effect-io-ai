Package: `effect`<br />
Module: `Console`<br />

## Console.dirxml

Displays an interactive tree of the descendant elements of the specified XML/HTML element.

This function is particularly useful for inspecting DOM elements in browser environments.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  // In a browser environment
  const element = document.getElementById("myElement")
  yield* Console.dirxml(element)
})
```

**Signature**

```ts
declare const dirxml: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L335)

Since v2.0.0