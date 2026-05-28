Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.every

Creates a predicate that returns `true` if all predicates in the collection return `true`.

**When to use**

Use when you have a dynamic list of predicates to apply.

**Details**

- Short-circuits on the first `false`.
- Iterates the collection each time the predicate is called.

**Example** (All checks)

```ts
import { Predicate } from "effect"

const allChecks = Predicate.every([Predicate.isNumber, (n: number) => n > 0])

console.log(allChecks(2))
```

**See**

- `some`
- `and`

**Signature**

```ts
declare const every: <A>(collection: Iterable<Predicate<A>>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1875)

Since v2.0.0