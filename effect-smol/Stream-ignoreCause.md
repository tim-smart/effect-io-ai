Package: `effect`<br />
Module: `Stream`<br />

## Stream.ignoreCause

Ignores the stream's failure cause, including defects, and ends the stream.

**When to use**

Use when a stream may fail with defects and you want to silently suppress the
entire failure cause — including both typed errors and defects — rather than
propagate it downstream.

**Example** (Ignoring stream failure causes)

```ts
import { Effect, Stream } from "effect"

Effect.runPromise(Effect.gen(function*() {
  const values = yield* Stream.make(1, 2).pipe(
    Stream.concat(Stream.die("boom")),
    Stream.ignoreCause({ log: false }),
    Stream.runCollect
  )
  yield* Effect.sync(() => console.log(values))
}))

// [ 1, 2 ]
```

**See**

- `ignore` to ignore only typed failures without suppressing defects

**Signature**

```ts
declare const ignoreCause: <Arg extends Stream<any, any, any> | { readonly log?: boolean | Severity | undefined; } | undefined>(streamOrOptions: Arg, options?: { readonly log?: boolean | Severity | undefined; } | undefined) => [Arg] extends [Stream<infer A, infer _E, infer R>] ? Stream<A, never, R> : <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6084)

Since v4.0.0