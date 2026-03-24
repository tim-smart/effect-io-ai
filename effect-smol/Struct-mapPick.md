Package: `effect`<br />
Module: `Struct`<br />

## Struct.mapPick

Applies a `Lambda` transformation only to the specified keys; all
other keys are copied unchanged.

- Use when you want to apply the same transformation to a subset of
  properties.
- Does not mutate the input; returns a fresh object.

**Example** (Wrapping only selected values in arrays)

```ts
import { pipe, Struct } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe(
  { x: 1, y: 2, z: 3 },
  Struct.mapPick(["x", "z"], asArray)
)
console.log(result) // { x: [1], y: 2, z: [3] }
```

**See**

- `map` – apply a lambda to all keys
- `mapOmit` – apply a lambda to all keys except selected ones

**Signature**

```ts
declare const mapPick: { <S extends object, const Keys extends ReadonlyArray<keyof S>, L extends Lambda>(keys: Keys, lambda: L): (self: S) => { [K in keyof S]: K extends Keys[number] ? Apply<L, S[K]> : S[K]; }; <S extends object, const Keys extends ReadonlyArray<keyof S>, L extends Lambda>(self: S, keys: Keys, lambda: L): { [K in keyof S]: K extends Keys[number] ? Apply<L, S[K]> : S[K]; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L740)

Since v4.0.0