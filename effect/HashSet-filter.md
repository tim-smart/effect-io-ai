Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.filter

Filters values out of a `HashSet` using the specified predicate.

The time complexity is of **`O(n)`**.

**Example**

```ts
**Syntax** with {@link Predicate}

```ts
import { HashSet, type Predicate, pipe } from "effect"

const filterPositiveNumbers: Predicate.Predicate<number> = (n) => n > 0

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(-2, -1, 0, 1, 2),
  HashSet.filter(filterPositiveNumbers)
)

// or with the pipe method
HashSet.make(-2, -1, 0, 1, 2).pipe(HashSet.filter(filterPositiveNumbers))

// or with `data-first` API
HashSet.filter(HashSet.make(-2, -1, 0, 1, 2), filterPositiveNumbers)
```
```

**Example**

```ts
**Syntax** with {@link Refinement}

```ts
import { HashSet, pipe } from "effect"

const stringRefinement = (value: unknown): value is string =>
  typeof value === "string"

// with `data-last`, a.k.a. `pipeable` API
pipe(
  HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier"), // // HashSet.HashSet<number | string>
  HashSet.filter(stringRefinement)
) // HashSet.HashSet<string>

// or with the pipe method
HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier") // HashSet.HashSet<number | string>
  .pipe(HashSet.filter(stringRefinement)) // HashSet.HashSet<string>

// or with `data-first` API
HashSet.filter(
  HashSet.make(1, "unos", 2, "two", 3, "trois", 4, "vier"), // HashSet.HashSet<number | string>
  stringRefinement
) // HashSet.HashSet<string>
```
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => HashSet<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => HashSet<A>; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): HashSet<B>; <A>(self: HashSet<A>, predicate: Predicate<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L2035)

Since v2.0.0