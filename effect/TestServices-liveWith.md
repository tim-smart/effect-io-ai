# liveWith

Retrieves the `Live` service for this test and uses it to run the specified
workflow.

To import and use `liveWith` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.liveWith
```

**Signature**

```ts
export declare const liveWith: <R, E, A>(f: (live: Live.TestLive) => Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
```
