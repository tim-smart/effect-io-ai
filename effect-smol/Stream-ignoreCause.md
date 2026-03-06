Package: `effect`<br />
Module: `Stream`<br />

## Stream.ignoreCause

Ignores the stream's failure cause, including defects, and ends the stream.

Use the `log` option to emit the full `Cause` when the stream fails.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail("boom")),
  Stream.ignoreCause({ log: "Error" })
)

const program = Stream.runCollect(stream)
```

**Signature**

```ts
declare const ignoreCause: <Arg extends Stream<any, any, any> | { readonly log?: boolean | Severity | undefined; } | undefined>(streamOrOptions: Arg, options?: { readonly log?: boolean | Severity | undefined; } | undefined) => [Arg] extends [Stream<infer A, infer _E, infer R>] ? Stream<A, never, R> : <A, E, R>(self: Stream<A, E, R>) => Stream<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5570)

Since v4.0.0