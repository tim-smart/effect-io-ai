Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.difference

Computes the set difference `(A - B)` between this `HashSet` and the
specified `Iterable<A>`.

Time complexity: **`O(n)`** where n is the number of elements in the set

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same; meaning we cannot compute a difference between a `HashSet
of bananas` and a `HashSet of elephants` as they are not the same type and
won't implement the Equal trait in the same way.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with data-last, a.k.a. pipeable API
pipe(HashSet.make(1, 2, 3), HashSet.difference(HashSet.make(3, 4, 5)))

// or piped with the pipe function
HashSet.make(1, 2, 3).pipe(HashSet.difference(HashSet.make(3, 4, 5)))

// or with data-first API
HashSet.difference(HashSet.make(1, 2, 3), HashSet.make(3, 4, 5))
```

**See**

- Other `HashSet` operations are `module:HashSet.intersection` `module:HashSet.union`

**Signature**

```ts
declare const difference: { <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1401)

Since v2.0.0