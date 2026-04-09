Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenEffect

Flattens a stream of `Effect` values into a stream of their results.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(Effect.succeed(1), Effect.succeed(2), Effect.succeed(3))

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream.pipe(Stream.flattenEffect()))
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [1, 2, 3]
```

**Signature**

```ts
declare const flattenEffect: <Arg extends Stream<Effect.Effect<any, any, any>, any, any> | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined = { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; }>(selfOrOptions?: Arg, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined) => [Arg] extends [Stream<Effect.Effect<infer _A, infer _EX, infer _RX>, infer _E, infer _R>] ? Stream<_A, _EX | _E, _RX | _R> : <A, EX, RX, E, R>(self: Stream<Effect.Effect<A, EX, RX>, E, R>) => Stream<A, EX | E, RX | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1995)

Since v2.0.0