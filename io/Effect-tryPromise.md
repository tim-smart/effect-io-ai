# tryPromise

Create an `Effect` that when executed will construct `promise` and wait for
its result, errors will produce failure as `unknown`.

To import and use `tryPromise` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryPromise
```

**Signature**

```ts
export declare const tryPromise: <A>(evaluate: LazyArg<Promise<A>>) => Effect<never, unknown, A>
```
