Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.union

Computes the set union `( self ∪ that )` between this `HashSet` and the
specified `Iterable<A>`.

Time complexity: **`O(n)`** where n is the number of elements in the set

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(HashSet.make(1, 2, 3), HashSet.union(HashSet.make(3, 4, 5)))

// or piped with the pipe function
HashSet.make(1, 2, 3).pipe(HashSet.union(HashSet.make(3, 4, 5)))

// or with data-first API
HashSet.union(HashSet.make(1, 2, 3), HashSet.make(3, 4, 5))
```

**See**

- Other `HashSet` operations are `module:HashSet.difference` `module:HashSet.intersection`

**Signature**

```ts
declare const union: { <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1592)

Since v2.0.0