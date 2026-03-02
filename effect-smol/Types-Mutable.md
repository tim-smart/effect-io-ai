Package: `effect`<br />
Module: `Types`<br />

## Types.Mutable

Removes `readonly` from all properties of `T`. Supports arrays, tuples,
and records.

- Use when you need a mutable version of a readonly type.
- Only affects the top level; nested properties remain readonly.

**Example** (Shallow mutable conversion)

```ts
import type { Types } from "effect"

type Obj = Types.Mutable<{
  readonly a: string
  readonly b: ReadonlyArray<number>
}>
// { a: string; b: ReadonlyArray<number> }
//   ^ mutable    ^ still readonly inside

type Arr = Types.Mutable<ReadonlyArray<string>>
// string[]

type Tup = Types.Mutable<readonly [string, number]>
// [string, number]
```

**See**

- `DeepMutable`

**Signature**

```ts
type Mutable<T> = {
  -readonly [P in keyof T]: T[P]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L484)

Since v2.0.0