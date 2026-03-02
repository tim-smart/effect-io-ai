Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.modifyAt

Set or remove the specified key in the `HashMap` using the specified
update function. The value of the specified key will be computed using the
provided hash.

The update function will be invoked with the current value of the key if it
exists, or `None` if no such value exists.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L753)

Since v2.0.0