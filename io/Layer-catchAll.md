# catchAll

Recovers from all errors.

To import and use `catchAll` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, R2, E2, A2>(onError: (error: E) => Layer<R2, E2, A2>): <R, A>(self: Layer<R, E, A>) => Layer<R2 | R, E2, A & A2>
  <R, E, A, R2, E2, A2>(self: Layer<R, E, A>, onError: (error: E) => Layer<R2, E2, A2>): Layer<R | R2, E2, A & A2>
}
```
