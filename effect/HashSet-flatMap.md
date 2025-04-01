Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.flatMap

Chains over the values of the `HashSet` using the specified function.

The time complexity is of **`O(n)`**.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(0, 1, 2), // HashSet.HashSet<number>
  HashSet.flatMap((n) => Array.of(String(n))) // HashSet.HashSet<string>
)

// or piped with the pipe method
HashSet.make(0, 1, 2) // HashSet.HashSet<number>
  .pipe(
    HashSet.flatMap((n) => Array.of(String(n))) // HashSet.HashSet<string>
  )

// or with `data-first` API
HashSet.flatMap(HashSet.make(0, 1, 2), (n) => Array.of(String(n)))
```

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: A) => Iterable<B>): (self: HashSet<A>) => HashSet<B>; <A, B>(self: HashSet<A>, f: (a: A) => Iterable<B>): HashSet<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1854)

Since v2.0.0