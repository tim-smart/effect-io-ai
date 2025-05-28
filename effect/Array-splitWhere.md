Package: `effect`<br />
Module: `Array`<br />

## Array.splitWhere

Splits this iterable on the first element that matches this predicate.
Returns a tuple containing two arrays: the first one is before the match, and the second one is from the match onward.

**Example**

```ts
import { Array } from "effect"

const result = Array.splitWhere([1, 2, 3, 4, 5], n => n > 3)
console.log(result) // [[1, 2, 3], [4, 5]]
```

**Signature**

```ts
declare const splitWhere: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [beforeMatch: Array<A>, fromMatch: Array<A>]; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [beforeMatch: Array<A>, fromMatch: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1962)

Since v2.0.0