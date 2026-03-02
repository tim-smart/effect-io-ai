Package: `effect`<br />
Module: `Array`<br />

## Array.bindTo

Names the elements of an array by wrapping each in an object with the given key, starting a do-notation scope.

- Equivalent to `Array.map(self, (a) => ({ [tag]: a }))`.
- Alternative to starting with `Do` + `bind`; useful when you already have an array.

**Example** (Naming an existing array)

```ts
import { Array, pipe } from "effect"

const result = pipe(
  [1, 2, 3],
  Array.bindTo("x")
)
console.log(result) // [{ x: 1 }, { x: 2 }, { x: 3 }]
```

**See**

- `Do` — start with an empty scope
- `bind` — add another array variable to the scope

**Signature**

```ts
declare const bindTo: { <N extends string>(tag: N): <A>(self: ReadonlyArray<A>) => Array<{ [K in N]: A; }>; <A, N extends string>(self: ReadonlyArray<A>, tag: N): Array<{ [K in N]: A; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4178)

Since v3.2.0