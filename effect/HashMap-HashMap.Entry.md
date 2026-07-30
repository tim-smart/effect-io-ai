Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.Entry

This type-level utility extracts the entry type `[K, V]` from a `HashMap<K, V>` type.

**Example**

```ts
import { HashMap } from "effect"

declare const hm: HashMap.HashMap<string, number>

// $ExpectType [string, number]
type V = HashMap.HashMap.Entry<typeof hm>

```

**Signature**

```ts
type Entry<T> = [Key<T>, Value<T>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L90)

Since v3.9.0