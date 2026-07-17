Package: `effect`<br />
Module: `Stream`<br />

## Stream.Stream

A `Stream<A, E, R>` describes a program that can emit many `A` values, fail
with `E`, and require `R`.

**Details**

Streams are pull-based with backpressure and emit chunks to amortize effect
evaluation. They support monadic composition and error handling similar to
`Effect`, adapted for multiple values.

**Example** (Creating and consuming streams)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  yield* Stream.make(1, 2, 3).pipe(
    Stream.map((n) => n * 2),
    Stream.runForEach((n) => Console.log(n))
  )
})

Effect.runPromise(program)
// Output:
// 2
// 4
// 6
```

**Signature**

```ts
export interface Stream<out A, out E = never, out R = never> extends Variance<A, E, R>, Pipeable {
  readonly channel: Channel.Channel<Arr.NonEmptyReadonlyArray<A>, E, void, unknown, unknown, unknown, R>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: StreamUnify<this>
  [Unify.ignoreSymbol]?: StreamUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L126)

Since v2.0.0