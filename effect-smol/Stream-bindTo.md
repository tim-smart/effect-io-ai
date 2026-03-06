Package: `effect`<br />
Module: `Stream`<br />

## Stream.bindTo

Maps each element into a record keyed by the provided name.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(Stream.bindTo("value"))

const program = Stream.runCollect(stream).pipe(Effect.flatMap(Console.log))

Effect.runPromise(program)
// [{ value: 1 }, { value: 2 }, { value: 3 }]
```

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <A, E, R>(self: Stream<A, E, R>) => Stream<{ [K in N]: A; }, E, R>; <A, E, R, N extends string>(self: Stream<A, E, R>, name: N): Stream<{ [K in N]: A; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9681)

Since v4.0.0