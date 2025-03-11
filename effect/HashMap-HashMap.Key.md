## HashMap.Key

This type-level utility extracts the key type `K` from a `HashMap<K, V>` type.

**Example**

```ts
import { HashMap } from "effect"

declare const hm: HashMap.HashMap<string, number>

// $ExpectType string
type K = HashMap.HashMap.Key<typeof hm>

```

**Signature**

```ts
type Key<T> = [T] extends [HashMap<infer _K, infer _V>] ? _K : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L55)

Since v2.0.0