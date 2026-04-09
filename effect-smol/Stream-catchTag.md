Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchTag

Recovers from failures whose `_tag` matches the provided value by switching to
the stream returned by `f`.

**When to Use**

Use `catchTag` when your error type is a tagged union with a readonly `_tag`
field and you want to handle a specific error case.

**Example**

```ts
import { Console, Data, Effect, Stream } from "effect"

class HttpError extends Data.TaggedError("HttpError")<{ message: string }> {}

const stream = Stream.fail(new HttpError({ message: "timeout" }))

const recovered = Stream.catchTag(stream, "HttpError", (error) =>
  Stream.make(`Recovered: ${error.message}`)
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(recovered)
  yield* Console.log(values)
  // Output: [ "Recovered: timeout" ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const catchTag: { <const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, E, A1, E1, R1, A2 = never, E2 = ExcludeTag<E, K extends readonly [string, ...string[]] ? K[number] : K>, R2 = never>(k: K, f: (e: ExtractTag<NoInfer<E>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Stream<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Stream<A2, E2, R2>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A1 | A | A2, E1 | E2, R1 | R | R2>; <A, E, R, const K extends Tags<E> | Arr.NonEmptyReadonlyArray<Tags<E>>, R1, E1, A1, A2 = never, E2 = ExcludeTag<E, K extends readonly [string, ...string[]] ? K[number] : K>, R2 = never>(self: Stream<A, E, R>, k: K, f: (e: ExtractTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Stream<A1, E1, R1>, orElse?: ((e: ExcludeTag<E, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Stream<A2, E2, R2>) | undefined): Stream<A1 | A | A2, E1 | E2, R1 | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4985)

Since v4.0.0