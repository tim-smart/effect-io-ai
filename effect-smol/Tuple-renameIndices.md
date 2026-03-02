Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.renameIndices

Rearranges elements of a tuple by providing an array of stringified source
indices. Each position in the array specifies which index to read from
(e.g., `["2", "1", "0"]` reverses a 3-element tuple).

- Does not mutate the input; returns a fresh tuple.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L358)

Since v4.0.0