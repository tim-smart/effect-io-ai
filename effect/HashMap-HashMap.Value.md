Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.Value

This type-level utility extracts the value type `V` from a `HashMap<K, V>` type.

**Example**

```ts
import { HashMap } from "effect"

declare const hm: HashMap.HashMap<string, number>

// $ExpectType number
type V = HashMap.HashMap.Value<typeof hm>

```

**Signature**

```ts
type Value<T> = [T] extends [HashMap<infer _K, infer _V>] ? _V : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L72)

Since v2.0.0