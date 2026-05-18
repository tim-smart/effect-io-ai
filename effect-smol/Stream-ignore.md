Package: `effect`<br />
Module: `Stream`<br />

## Stream.ignore

Ignores failures and ends the stream on error.

Use the `log` option to emit the full `Cause` when the stream fails.

**Example** (Ignoring stream failures)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.concat(Stream.fail("boom")),
    Stream.ignore,
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Example** (Configuring ignore logging)

```ts
import { Effect, Stream } from "effect"

Effect.runPromise(Effect.gen(function*() {
  const values = yield* Stream.fail("boom").pipe(
    Stream.ignore({ log: false }),
    Stream.runCollect
  )
  yield* Effect.sync(() => console.log(values))
}))

// []
```

**Signature**

```ts
declare const ignore: <Arg extends Stream<any, any, any> | { readonly log?: boolean | Severity | undefined; } | undefined>(selfOrOptions: Arg, options?: { readonly log?: boolean | Severity | undefined; } | undefined) => [Arg] extends [Stream<infer A, infer _E, infer R>] ? Stream<A, never, R> : <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5894)

Since v4.0.0