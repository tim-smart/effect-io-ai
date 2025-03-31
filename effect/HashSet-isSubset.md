Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isSubset

Returns `true` if and only if every element in the this `HashSet` is an
element of the second set,

**NOTE**: the hash and equal of both sets must be the same.

Time complexity analysis is of **`O(n)`**

**Example**

```ts
**Syntax**

```ts
import { HashSet, pipe } from "effect"

const set1 = HashSet.make(0, 1)
const set2 = HashSet.make(1, 2)
const set3 = HashSet.make(0, 1, 2)

// with `data-last`, a.k.a. `pipeable` API
pipe(set1, HashSet.isSubset(set2)) // false
pipe(set1, HashSet.isSubset(set3)) // true

// or piped with the pipe function
set1.pipe(HashSet.isSubset(set2)) // false
set1.pipe(HashSet.isSubset(set3)) // true

// or with `data-first` API
HashSet.isSubset(set1, set2) // false
HashSet.isSubset(set1, set3) // true)
```
```

**See**

- Other `HashSet` elements are `has` `some` `every`

**Signature**

```ts
declare const isSubset: { <A>(that: HashSet<A>): (self: HashSet<A>) => boolean; <A>(self: HashSet<A>, that: HashSet<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L886)

Since v2.0.0