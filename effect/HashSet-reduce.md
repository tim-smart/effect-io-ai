Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.reduce

Reduces the specified state over the values of the `HashSet`.

The time complexity is of **`O(n)`**.

**Example**

```ts
**Syntax**

```ts
import { HashSet, pipe } from "effect"

const sum = (a: number, b: number): number => a + b

// with `data-last`, a.k.a. `pipeable` API
pipe(HashSet.make(0, 1, 2), HashSet.reduce(0, sum))

// or with the pipe method
HashSet.make(0, 1, 2).pipe(HashSet.reduce(0, sum))

// or with `data-first` API
HashSet.reduce(HashSet.make(0, 1, 2), 0, sum)
```
```

**Signature**

```ts
declare const reduce: { <A, Z>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: HashSet<A>) => Z; <A, Z>(self: HashSet<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1943)

Since v2.0.0