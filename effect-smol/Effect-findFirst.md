Package: `effect`<br />
Module: `Effect`<br />

## Effect.findFirst

Returns the first element that satisfies an effectful predicate.

The predicate receives the element and its index. Evaluation short-circuits
as soon as an element matches.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.findFirst([1, 2, 3, 4], (n) => Effect.succeed(n > 2))

Effect.runPromise(program).then(console.log)
// { _id: 'Option', _tag: 'Some', value: 3 }
```

**Signature**

```ts
declare const findFirst: { <A, E, R>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<Option<A>, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): Effect<Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L818)

Since v2.0.0