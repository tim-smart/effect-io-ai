Package: `effect`<br />
Module: `Effect`<br />

## Effect.partition

Applies an effectful function to each element and partitions failures and
successes.

The returned tuple is `[excluded, satisfying]`, where:

- `excluded` contains all failures.
- `satisfying` contains all successes.

This function runs every effect and never fails. Use `concurrency` to control
parallelism.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.partition([0, 1, 2, 3], (n) =>
  n % 2 === 0 ? Effect.fail(`${n} is even`) : Effect.succeed(n)
)

Effect.runPromise(program).then(console.log)
// [ ["0 is even", "2 is even"], [1, 3] ]
```

**Signature**

```ts
declare const partition: { <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): (elements: Iterable<A>) => Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): Effect<[excluded: Array<E>, satisfying: Array<B>], never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L785)

Since v3.0.0