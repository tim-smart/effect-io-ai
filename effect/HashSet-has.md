Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.has

Checks if the specified value exists in the `HashSet`.

Time complexity: **`O(1)`** average

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(HashSet.make(0, 1, 2), HashSet.has(3)) // false

// or piped with the pipe function
HashSet.make(0, 1, 2).pipe(HashSet.has(3)) // false

// or with `data-first` API
HashSet.has(HashSet.make(0, 1, 2), 3) // false
```

**See**

- Other `HashSet` elements are `module:HashSet.some` `module:HashSet.every` `module:HashSet.isSubset`

**Signature**

```ts
declare const has: { <A>(value: A): (self: HashSet<A>) => boolean; <A>(self: HashSet<A>, value: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L588)

Since v2.0.0