Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.empty

Creates an empty mutable hash set.

This function initializes and returns an empty `MutableHashSet` instance,
which allows for efficient storage and manipulation of unique elements.

Time complexity: **`O(1)`**

**Example**

```ts
import { MutableHashSet } from "effect"

type T = unknown // replace with your type

// in places where the type can't be inferred, replace with your type
const set: MutableHashSet.MutableHashSet<T> = MutableHashSet.empty<T>()
```

**See**

- Other `MutableHashSet` constructors are `module:MutableHashSet.make` `module:MutableHashSet.fromIterable`

**Signature**

```ts
declare const empty: <K = never>() => MutableHashSet<K>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L179)

Since v2.0.0