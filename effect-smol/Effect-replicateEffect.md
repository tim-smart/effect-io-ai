Package: `effect`<br />
Module: `Effect`<br />

## Effect.replicateEffect

Performs this effect `n` times and collects results with `Effect.all` semantics.

Use `concurrency` to control parallelism and `discard: true` to ignore results.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const results = yield* Effect.replicateEffect(3)(Effect.succeed(1))
  yield* Console.log(results)
})
```

**Signature**

```ts
declare const replicateEffect: { (n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; }): <A, E, R>(self: Effect<A, E, R>) => Effect<Array<A>, E, R>; (n: number, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>; <A, E, R>(self: Effect<A, E, R>, n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; }): Effect<Array<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, n: number, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7295)

Since v2.0.0