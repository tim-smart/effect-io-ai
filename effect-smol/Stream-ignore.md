Package: `effect`<br />
Module: `Stream`<br />

## Stream.ignore

Ignores failures and ends the stream on error.

Use the `log` option to emit the full `Cause` when the stream fails.

**Example**

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

**Example**

```ts
import { Stream } from "effect"

const stream = Stream.fail("boom")

const program = stream.pipe(Stream.ignore({ log: "Error" }))
```

**Signature**

```ts
declare const ignore: <Arg extends Stream<any, any, any> | { readonly log?: boolean | Severity | undefined; } | undefined>(selfOrOptions: Arg, options?: { readonly log?: boolean | Severity | undefined; } | undefined) => [Arg] extends [Stream<infer A, infer _E, infer R>] ? Stream<A, never, R> : <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5526)

Since v4.0.0