Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.modifyAt

Sets or removes the specified key using an update function.

The update function receives `Some(value)` when the key exists or `None`
when it does not. Returning `Some(newValue)` stores the value, and returning
`None` removes the key or leaves it absent.

**Example** (Updating values with Options)

```ts
import * as HashMap from "effect/HashMap"
import * as Option from "effect/Option"

const map = HashMap.make(["a", 1], ["b", 2])

// Increment existing value or set to 1 if not present
const updateFn = (option: Option.Option<number>) =>
  Option.isSome(option) ? Option.some(option.value + 1) : Option.some(1)

const updated = HashMap.modifyAt(map, "a", updateFn)
console.log(HashMap.get(updated, "a")) // Option.some(2)
```

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: HashMap.UpdateFn<V>): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, f: HashMap.UpdateFn<V>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L860)

Since v2.0.0