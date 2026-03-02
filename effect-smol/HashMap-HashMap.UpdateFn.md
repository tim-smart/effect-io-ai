Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.UpdateFn

A function that updates a value based on its current state.
Takes an Option representing the current value and returns an Option
representing the new value.

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
type UpdateFn<V> = (option: Option<V>) => Option<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L104)

Since v2.0.0