Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.map

Applies a `Struct.Lambda` transformation to every element in a tuple.

- Use when you want to apply the same function to every element.
- The lambda must be created with `Struct.lambda` so the compiler can
  track the output types per element.
- Does not mutate the input; returns a fresh tuple.

**Example** (Wrapping every element in an array)

```ts
import { pipe, Struct, Tuple } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe(Tuple.make(1, "hello", true), Tuple.map(asArray))
console.log(result) // [[1], ["hello"], [true]]
```

**See**

- `mapPick` – apply a lambda only to selected indices
- `mapOmit` – apply a lambda to all indices except selected ones
- `evolve` – apply different functions to different indices

**Signature**

```ts
declare const map: { <L extends Lambda>(lambda: L): <const T extends ReadonlyArray<unknown>>(self: T) => { [K in keyof T]: Apply<L, T[K]>; }; <const T extends ReadonlyArray<unknown>, L extends Lambda>(self: T, lambda: L): { [K in keyof T]: Apply<L, T[K]>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L406)

Since v4.0.0