Package: `effect`<br />
Module: `Console`<br />

## Console.dir

Displays an interactive list of the properties of the specified object.

This function provides a detailed view of an object's properties,
which can be useful for debugging complex data structures.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const obj = { name: "John", age: 30, nested: { city: "New York" } }
  yield* Console.dir(obj)
  yield* Console.dir(obj, { depth: 2, colors: true })
})
```

**Signature**

```ts
declare const dir: (item: any, options?: any) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L309)

Since v2.0.0