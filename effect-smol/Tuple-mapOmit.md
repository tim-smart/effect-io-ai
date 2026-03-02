Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.mapOmit

Applies a `Struct.Lambda` transformation to all elements except those at the
specified indices; the excluded elements are copied unchanged.

- Use when most elements should be transformed but a few should be
  preserved.
- Does not mutate the input; returns a fresh tuple.

**Example** (Wrapping all elements except one in arrays)

```ts
import { pipe, Struct, Tuple } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe(
  Tuple.make(1, "hello", true),
  Tuple.mapOmit([1], asArray)
)
console.log(result) // [[1], "hello", [true]]
```

**See**

- `map` – apply a lambda to all elements
- `mapPick` – apply a lambda only to selected indices

**Signature**

```ts
declare const mapOmit: { <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>, L extends Lambda>(indices: I, lambda: L): (self: T) => { [K in keyof T]: K extends `${I[number]}` ? T[K] : Apply<L, T[K]>; }; <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>, L extends Lambda>(self: T, indices: I, lambda: L): { [K in keyof T]: K extends `${I[number]}` ? T[K] : Apply<L, T[K]>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L511)

Since v4.0.0