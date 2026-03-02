Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.mapPick

Applies a `Struct.Lambda` transformation only to the elements at the
specified indices; all other elements are copied unchanged.

- Use when you want to apply the same transformation to a subset of
  positions.
- Does not mutate the input; returns a fresh tuple.

**Example** (Wrapping only selected elements in arrays)

```ts
import { pipe, Struct, Tuple } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe(
  Tuple.make(1, "hello", true),
  Tuple.mapPick([0, 2], asArray)
)
console.log(result) // [[1], "hello", [true]]
```

**See**

- `map` – apply a lambda to all elements
- `mapOmit` – apply a lambda to all elements except selected ones

**Signature**

```ts
declare const mapPick: { <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>, L extends Lambda>(indices: I, lambda: L): (self: T) => { [K in keyof T]: K extends `${I[number]}` ? Apply<L, T[K]> : T[K]; }; <const T extends ReadonlyArray<unknown>, const I extends ReadonlyArray<Indices<T>>, L extends Lambda>(self: T, indices: I, lambda: L): { [K in keyof T]: K extends `${I[number]}` ? Apply<L, T[K]> : T[K]; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L455)

Since v4.0.0