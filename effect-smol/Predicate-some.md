Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.some

Creates a predicate that returns `true` if any predicate in the collection returns `true`.

When to use:
- You have a dynamic list of predicates and only need one to pass.

Behavior:
- Pure; does not mutate input.
- Short-circuits on the first `true`.
- Iterates the collection each time the predicate is called.

**Example** (Any check)

```ts
import { Predicate } from "effect"

const anyCheck = Predicate.some([Predicate.isString, Predicate.isNumber])

console.log(anyCheck("ok"))
```

See also: `every`, `or`

**Signature**

```ts
declare const some: <A>(collection: Iterable<Predicate<A>>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1827)

Since v2.0.0