# promise

Like `tryPromise` but produces a defect in case of errors.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped Promise api.

To import and use `promise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.promise
```

**Signature**

```ts
export declare const promise: <A>(evaluate: (signal: AbortSignal) => Promise<A>) => Effect<A, never, never>
```
