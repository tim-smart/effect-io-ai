Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.some

Check if a predicate holds true for some `HashSet` element.

Time complexity: **`O(n)`** where n is the number of elements in the set

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

const set: HashSet.HashSet<number> = HashSet.make(0, 1, 2)

// with `data-last`, a.k.a. `pipeable` API
pipe(
  set,
  HashSet.some((n) => n > 0)
) // true

// or piped with the pipe function
set.pipe(HashSet.some((n) => n > 0)) // true

// or with `data-first` API
HashSet.some(set, (n) => n > 0) // true
```

**See**

- Other `HashSet` elements are `module:HashSet.has` `module:HashSet.every` `module:HashSet.isSubset`

**Signature**

```ts
declare const some: { <A>(f: Predicate<A>): (self: HashSet<A>) => boolean; <A>(self: HashSet<A>, f: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L657)

Since v2.0.0