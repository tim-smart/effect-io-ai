Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.partition

Partition the values of a `HashSet` using the specified predicate.

If a value matches the predicate, it will be placed into the `HashSet` on the
right side of the resulting `Tuple`, otherwise the value will be placed into
the left side.

Time complexity is of **`O(n)`**.

**Example**

```ts
**Syntax** with {@link Predicate}

```ts
import { HashSet, pipe, Predicate } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(0, 1, 2, 3, 4, 5),
  HashSet.partition((n) => n % 2 === 0)
)

// or with the pipe method
HashSet.make(0, 1, 2, 3, 4, 5).pipe(
  HashSet.partition((n) => n % 2 === 0)
)

// or with `data-first` API
HashSet.partition(HashSet.make(0, 1, 2, 3, 4, 5), (n) => n % 2 === 0)
```
```

**Example**

```ts
**Syntax** with {@link Refinement}

```ts
import { HashSet, pipe, Predicate } from "effect"

const stringRefinement: Predicate.Refinement<string | number, string> = (
  value
) => typeof value === "string"

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier"),
  HashSet.partition(stringRefinement)
)

// or with the pipe method
HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier").pipe(
  HashSet.partition(stringRefinement)
)

// or with `data-first` API
HashSet.partition(
  HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier"),
  stringRefinement
)
```
```

**Signature**

```ts
declare const partition: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]; <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => [excluded: HashSet<A>, satisfying: HashSet<A>]; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]; <A>(self: HashSet<A>, predicate: Predicate<A>): [excluded: HashSet<A>, satisfying: HashSet<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L2191)

Since v2.0.0