Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.add

**Checks** whether the `MutableHashSet` contains the given element, and
**adds** it if not.

Time complexity: **`O(1)`** average

**Syntax**

```ts
import { MutableHashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(
  MutableHashSet.empty(),
  MutableHashSet.add(0),
  MutableHashSet.add(0)
)

// or piped with the pipe function
MutableHashSet.empty().pipe(MutableHashSet.add(0))

// or with data-first API
MutableHashSet.add(MutableHashSet.empty(), 0)
```

**See**

- Other `MutableHashSet` elements are `module:MutableHashSet.remove` `module:MutableHashSet.size` `module:MutableHashSet.clear` `module:MutableHashSet.has`

**Signature**

```ts
declare const add: { <V>(key: V): (self: MutableHashSet<V>) => MutableHashSet<V>; <V>(self: MutableHashSet<V>, key: V): MutableHashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L402)

Since v2.0.0