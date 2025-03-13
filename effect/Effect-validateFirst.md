Package: `effect`<br />
Module: `Effect`<br />

## Effect.validateFirst

This function is similar to `validateAll` but with a key difference: it
returns the first successful result or all errors if none of the operations
succeed.

**Details**

This function processes a collection of elements and applies an effectful
operation to each. Unlike `validateAll`, which accumulates both
successes and failures, `Effect.validateFirst` stops and returns the first
success it encounters. If no success occurs, it returns all accumulated
errors. This can be useful when you are interested in the first successful
result and want to avoid processing further once a valid result is found.

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<number, string[], never>
//      ▼
const program = Effect.validateFirst([1, 2, 3, 4, 5], (n) => {
  if (n < 4) {
    return Effect.fail(`${n} is not less that 4`)
  } else {
    return Console.log(`item ${n}`).pipe(Effect.as(n))
  }
})

// Effect.runPromise(program).then(console.log, console.error)
// Output:
// item 4
// 4
```

**See**

- `validateAll` for a similar function that accumulates all results.
- `firstSuccessOf` for a similar function that processes multiple
effects and returns the first successful one or the last error.

**Signature**

```ts
declare const validateFirst: { <A, B, E, R>(f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): (elements: Iterable<A>) => Effect<B, Array<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<B, Array<E>, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2278)

Since v2.0.0