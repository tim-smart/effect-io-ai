Package: `effect`<br />
Module: `Types`<br />

## Types.DeepMutable

Recursively removes `readonly` from all properties, including nested
objects, arrays, `Map`, and `Set`.

- Use when you need a fully mutable version of a deeply readonly type.
- Recursion stops at primitives (`string`, `number`, `boolean`, `bigint`,
  `symbol`) and functions.

**Example** (Deep mutable conversion)

```ts
import type { Types } from "effect"

type Deep = Types.DeepMutable<{
  readonly a: string
  readonly b: ReadonlyArray<{ readonly c: number }>
}>
// { a: string; b: Array<{ c: number }> }
```

**See**

- `Mutable`

**Signature**

```ts
type DeepMutable<T> = T extends ReadonlyMap<infer K, infer V> ? Map<DeepMutable<K>, DeepMutable<V>>
  : T extends ReadonlySet<infer V> ? Set<DeepMutable<V>>
  : T extends string | number | boolean | bigint | symbol | Function ? T
  : { -readonly [K in keyof T]: DeepMutable<T[K]> }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L513)

Since v3.1.0