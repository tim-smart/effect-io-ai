Package: `effect`<br />
Module: `Struct`<br />

## Struct.mapOmit

Applies a `Lambda` transformation to all keys except the specified
ones; the excluded keys are copied unchanged.

- Use when most keys should be transformed but a few should be preserved.
- Does not mutate the input; returns a fresh object.

**Example** (Wrapping all values except one in arrays)

```ts
import { pipe, Struct } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe(
  { x: 1, y: 2, z: 3 },
  Struct.mapOmit(["y"], asArray)
)
console.log(result) // { x: [1], y: 2, z: [3] }
```

**See**

- `map` – apply a lambda to all keys
- `mapPick` – apply a lambda only to selected keys

**Signature**

```ts
declare const mapOmit: { <S extends object, const Keys extends ReadonlyArray<keyof S>, L extends Lambda>(keys: Keys, lambda: L): (self: S) => { [K in keyof S]: K extends Keys[number] ? S[K] : Apply<L, S[K]>; }; <S extends object, const Keys extends ReadonlyArray<keyof S>, L extends Lambda>(self: S, keys: Keys, lambda: L): { [K in keyof S]: K extends Keys[number] ? S[K] : Apply<L, S[K]>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L790)

Since v4.0.0