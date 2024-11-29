# fail

Terminates with the specified error.

To import and use `fail` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fail
undefined

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
export declare const fail: <E>(error: E) => Stream<never, E>
```
