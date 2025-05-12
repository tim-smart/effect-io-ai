Package: `effect`<br />
Module: `Types`<br />

## Types.DeepMutable

Like `Types.Mutable`, but works recursively.

**Example**

```ts
import type { Types } from "effect"

type DeepMutableStruct = Types.DeepMutable<{
  readonly a: string;
  readonly b: readonly string[]
}>
// { a: string; b: string[] }
```

**Signature**

```ts
type DeepMutable<T> = T extends ReadonlyMap<infer K, infer V> ? Map<DeepMutable<K>, DeepMutable<V>>
  : T extends ReadonlySet<infer V> ? Set<DeepMutable<V>>
  : T extends string | number | boolean | bigint | symbol ? T
  : { -readonly [K in keyof T]: DeepMutable<T[K]> }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L260)

Since v3.1.0