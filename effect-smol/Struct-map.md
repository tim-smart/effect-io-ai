Package: `effect`<br />
Module: `Struct`<br />

## Struct.map

Applies a `Lambda` transformation to every value in a struct.

- Use when you want to apply the same function to every value in a struct.
- The lambda must be created with `lambda` so the compiler can track
  the output types.
- Does not mutate the input; returns a fresh object.

**Example** (Wrapping every value in an array)

```ts
import { pipe, Struct } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe({ width: 10, height: 20 }, Struct.map(asArray))
console.log(result) // { width: [10], height: [20] }
```

**See**

- `mapPick` – apply a lambda only to selected keys
- `mapOmit` – apply a lambda to all keys except selected ones
- `evolve` – apply different functions to different keys

**Signature**

```ts
declare const map: { <L extends Lambda>(lambda: L): <S extends object>(self: S) => { [K in keyof S]: Apply<L, S[K]>; }; <S extends object, L extends Lambda>(self: S, lambda: L): { [K in keyof S]: Apply<L, S[K]>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L689)

Since v4.0.0