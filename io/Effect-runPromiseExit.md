# runPromiseExit

Runs an `Effect` workflow, returning a `Promise` which resolves with the
`Exit` value of the workflow.

To import and use `runPromiseExit` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.runPromiseExit
```

**Signature**

```ts
export declare const runPromiseExit: <E, A>(effect: Effect<never, E, A>) => Promise<Exit.Exit<E, A>>
```
