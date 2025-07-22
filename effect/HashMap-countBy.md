Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.countBy

Counts all the element of the given HashMap that pass the given predicate

**Example**

```ts
import { HashMap } from "effect"

const map = HashMap.make([1, "a"], [2, "b"], [3, "c"])
const result = HashMap.countBy(map, (_v, key) => key % 2 === 1)
console.log(result) // 2
```

**Signature**

```ts
declare const countBy: { <K, V>(predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): (self: HashMap<K, V>) => number; <K, V>(self: HashMap<K, V>, predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L301)

Since v3.17.0