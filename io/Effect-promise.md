# promise

Like `tryCatchPromise` but produces a defect in case of errors.

To import and use `promise` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.promise
```

**Signature**

```ts
export declare const promise: <A>(evaluate: LazyArg<Promise<A>>) => Effect<never, never, A>
```
