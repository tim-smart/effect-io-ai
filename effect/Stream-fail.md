Package: `effect`<br />
Module: `Stream`<br />

## Stream.fail

Terminates with the specified error.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.fail("Uh oh!")

Effect.runPromiseExit(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'Uh oh!' }
// }
```

**Signature**

```ts
declare const fail: <E>(error: E) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1581)

Since v2.0.0