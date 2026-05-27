Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.renameIndices

Rearranges elements of a tuple by providing an array of stringified source
indices. Each position in the array specifies which index to read from
(e.g., `["2", "1", "0"]` reverses a 3-element tuple).

**When to use**

Use to reorder tuple elements while preserving index-specific types.

**Details**

The input tuple is not mutated; a fresh tuple is returned.

**Gotchas**

The mapping uses stringified source indices, not arbitrary names.

**Example** (Swapping elements)

```ts
import { pipe, Tuple } from "effect"

const result = pipe(
  Tuple.make("a", "b", "c"),
  Tuple.renameIndices(["2", "1", "0"])
)
console.log(result) // ["c", "b", "a"]
```

**See**

- `evolve` – transform element values instead of positions

**Signature**

```ts
declare const renameIndices: { <const T extends ReadonlyArray<unknown>, const M extends { readonly [I in keyof T]?: `${keyof T & string}`; }>(mapping: M): (self: T) => { [I in keyof T]: I extends keyof M ? M[I] extends keyof T ? T[M[I]] : T[I] : T[I]; }; <const T extends ReadonlyArray<unknown>, const M extends { readonly [I in keyof T]?: `${keyof T & string}`; }>(self: T, mapping: M): { [I in keyof T]: I extends keyof M ? M[I] extends keyof T ? T[M[I]] : T[I] : T[I]; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L395)

Since v4.0.0