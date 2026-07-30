Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.intersection

Returns a `HashSet` of values which are present in both this set and that
`Iterable<A>`. Computes set intersection (A ∩ B)

Time complexity: **`O(n)`** where n is the number of elements in the smaller
set

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(HashSet.make(1, 2, 3), HashSet.intersection(HashSet.make(2, 3, 4)))

// or piped with the pipe function
HashSet.make(1, 2, 3).pipe(HashSet.intersection(HashSet.make(2, 3, 4)))

// or with data-first API
HashSet.intersection(HashSet.make(1, 2, 3), HashSet.make(2, 3, 4))
```

**See**

- Other `HashSet` operations are `module:HashSet.difference` `module:HashSet.union`

**Signature**

```ts
declare const intersection: { <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1497)

Since v2.0.0