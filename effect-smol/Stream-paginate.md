Package: `effect`<br />
Module: `Stream`<br />

## Stream.paginate

Like `Stream.unfold`, but allows the emission of values to end one step further
than the unfolding of the state. This is useful for embedding paginated APIs,
hence the name.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1732)

Since v2.0.0