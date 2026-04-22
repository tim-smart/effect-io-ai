Package: `effect`<br />
Module: `Effect`<br />

## Effect.forEach

Executes an effectful operation for each element in an `Iterable`.

**Details**

The `forEach` function applies a provided operation to each element in the
iterable, producing a new effect that returns an array of results.

If any effect fails, the iteration stops immediately (short-circuiting), and
the error is propagated.

**Concurrency**

The `concurrency` option controls how many operations are performed
concurrently. By default, the operations are performed sequentially.

**Discarding Results**

If the `discard` option is set to `true`, the intermediate results are not
collected, and the final result of the operation is `void`.

**Example**

```ts
// Title: Applying Effects to Iterable Elements
import { Effect } from "effect"
import { Console } from "effect"

const result = Effect.forEach(
  [1, 2, 3, 4, 5],
  (n, index) =>
    Console.log(`Currently at index ${index}`).pipe(Effect.as(n * 2))
)

Effect.runPromise(result).then(console.log)
// Output:
// Currently at index 0
// Currently at index 1
// Currently at index 2
// Currently at index 3
// Currently at index 4
// [ 2, 4, 6, 8, 10 ]
```

**Example**

```ts
// Title: Using discard to Ignore Results
import { Effect } from "effect"
import { Console } from "effect"

// Apply effects but discard the results
const result = Effect.forEach(
  [1, 2, 3, 4, 5],
  (n, index) =>
    Console.log(`Currently at index ${index}`).pipe(Effect.as(n * 2)),
  { discard: true }
)

Effect.runPromise(result).then(console.log)
// Output:
// Currently at index 0
// Currently at index 1
// Currently at index 2
// Currently at index 3
// Currently at index 4
// undefined
```

**See**

- `all` for combining multiple effects into one.

**Signature**

```ts
declare const forEach: { <B, E, R, S extends Iterable<any>, const Discard extends boolean = false>(f: (a: Arr.ReadonlyArray.Infer<S>, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: Discard | undefined; } | undefined): (self: S) => Effect<Discard extends false ? Arr.ReadonlyArray.With<S, B> : void, E, R>; <B, E, R, S extends Iterable<any>, const Discard extends boolean = false>(self: S, f: (a: Arr.ReadonlyArray.Infer<S>, i: number) => Effect<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: Discard | undefined; } | undefined): Effect<Discard extends false ? Arr.ReadonlyArray.With<S, B> : void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L983)

Since v2.0.0