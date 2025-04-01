Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.add

Adds a value to the `HashSet`.

Time complexity: **`O(1)`** average

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(HashSet.empty(), HashSet.add(0), HashSet.add(0))

// or piped with the pipe function
HashSet.empty().pipe(HashSet.add(0))

// or with data-first API
HashSet.add(HashSet.empty(), 0)
```

**See**

- Other `HashSet` mutations are `module:HashSet.remove` `module:HashSet.toggle` `module:HashSet.beginMutation` `module:HashSet.endMutation` `module:HashSet.mutate`

**Signature**

```ts
declare const add: { <A>(value: A): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, value: A): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1261)

Since v2.0.0