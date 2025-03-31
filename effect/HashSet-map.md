Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.map

Maps over the values of the `HashSet` using the specified function.

The time complexity is of **`O(n)`**.

**Example**

```ts
**Syntax**

```ts
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(0, 1, 2), // HashSet.HashSet<number>
  HashSet.map(String) // HashSet.HashSet<string>
)

// or piped with the pipe method
HashSet.make(0, 1, 2).pipe(HashSet.map(String))

// or with `data-first` API
HashSet.map(HashSet.make(0, 1, 2), String)
```
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: HashSet<A>) => HashSet<B>; <A, B>(self: HashSet<A>, f: (a: A) => B): HashSet<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1750)

Since v2.0.0