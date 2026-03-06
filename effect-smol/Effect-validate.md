Package: `effect`<br />
Module: `Effect`<br />

## Effect.validate

Applies an effectful function to each element and accumulates all failures.

This function always evaluates every element. If at least one effect fails,
all failures are returned as a non-empty array and successes are discarded.
If all effects succeed, it returns all collected successes.

Use `discard: true` to ignore successful values while still validating all
elements.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.validate([0, 1, 2, 3], (n) =>
  n % 2 === 0 ? Effect.fail(`${n} is even`) : Effect.succeed(n)
)

Effect.runPromiseExit(program).then(console.log)
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     reasons: [
//       { _id: 'Reason', _tag: 'Fail', error: '0 is even' },
//       { _id: 'Reason', _tag: 'Fail', error: '2 is even' }
//     ]
//   }
// }
```

**Signature**

```ts
declare const validate: { <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; } | undefined): (elements: Iterable<A>) => Effect<Array<B>, Arr.NonEmptyArray<E>, R>; <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): (elements: Iterable<A>) => Effect<void, Arr.NonEmptyArray<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; } | undefined): Effect<Array<B>, Arr.NonEmptyArray<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): Effect<void, Arr.NonEmptyArray<E>, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L844)

Since v4.0.0