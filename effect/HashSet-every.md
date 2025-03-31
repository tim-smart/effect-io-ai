Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.every

Check if a predicate holds true for every `HashSet` element.

Time complexity is **`O(n)`** as it needs to traverse the whole HashSet
collection

**Example**

```ts
**syntax** with {@link Refinement}

```ts
import { HashSet, pipe, Predicate } from "effect"

const numberOrString = HashSet.make(1, "1", "one", "uno")

// with `data-last`, a.k.a. `pipeable` API and `Refinement`
pipe(
  numberOrString, // HashSet.HashSet<number | string>
  HashSet.every(Predicate.isString)
) // HashSet.HashSet<string>

// or piped with the pipe function and  `Refinement`
numberOrString // HashSet.HashSet<number | string>
  .pipe(HashSet.every(Predicate.isString)) // HashSet.HashSet<string>

// or with `data-first` API and `Refinement`
HashSet.every(
  numberOrString, // HashSet.HashSet<number | string>
  Predicate.isString
) // HashSet.HashSet<string>
```
```

**Example**

```ts
**syntax** with {@link Predicate}

```ts
import { HashSet, pipe } from "effect"

const set = HashSet.make(1, 2, 3)

// with `data-last`, a.k.a. `pipeable` API
pipe(
  set,
  HashSet.every((n) => n >= 0)
) // true

// or piped with the pipe function
set.pipe(HashSet.every((n) => n >= 0)) // true

// or with `data-first` API
HashSet.every(set, (n) => n >= 0) // true
```
```

**See**

- Other `HashSet` elements are `has` `some` `isSubset`

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => self is HashSet<B>; <A>(predicate: Predicate<A>): (self: HashSet<A>) => boolean; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): self is HashSet<B>; <A>(self: HashSet<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L757)

Since v2.0.0