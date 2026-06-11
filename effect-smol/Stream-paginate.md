Package: `effect`<br />
Module: `Stream`<br />

## Stream.paginate

Creates a stream by repeatedly evaluating an effectful page function.

**When to use**

Use to consume paginated APIs where each step returns a batch of values
together with an optional next state.

**Details**

This is similar to `unfold`, but each step can emit zero or more values
and independently decide whether another state should be requested.

**Example** (Paginating stream state)

```ts
import { Console, Effect, Option, Stream } from "effect"

const stream = Stream.paginate(0, (n: number) =>
  Effect.succeed(
    [
      [n],
      n < 3 ? Option.some(n + 1) : Option.none<number>()
    ] as const
  ))

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Output: [ 0, 1, 2, 3 ]
```

**Signature**

```ts
declare const paginate: <S, A, E = never, R = never>(s: S, f: (s: S) => Effect.Effect<readonly [ReadonlyArray<A>, Option.Option<S>], E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1684)

Since v2.0.0