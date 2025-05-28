Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.hasBy

Checks if an element matching the given predicate exists in the given `HashMap`.

**Example**

```ts
import { HashMap } from "effect"

const hm = HashMap.make([1, 'a'])
HashMap.hasBy(hm, (value, key) => value === 'a' && key === 1); // -> true
HashMap.hasBy(hm, (value) => value === 'b'); // -> false

```

**Signature**

```ts
declare const hasBy: { <K, V>(predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): (self: HashMap<K, V>) => boolean; <K, V>(self: HashMap<K, V>, predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L213)

Since v3.16.0