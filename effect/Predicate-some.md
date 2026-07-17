Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.some

Creates a predicate that returns `true` if any predicate in the collection returns `true`.

**When to use**

Use when you have a dynamic list of predicates and only need one to pass.

**Details**

Evaluation short-circuits on the first `true`. The collection is iterated
each time the predicate is called.

**Example** (Checking any predicate)

```ts
import { Predicate } from "effect"

const anyCheck = Predicate.some([Predicate.isString, Predicate.isNumber])

console.log(anyCheck("ok"))
```

**See**

- `every`
- `or`

**Signature**

```ts
declare const some: <A>(collection: Iterable<Predicate<A>>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1863)

Since v2.0.0