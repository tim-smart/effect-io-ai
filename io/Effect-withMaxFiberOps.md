# withMaxFiberOps

Sets the child effect's maximum number of ops before yield

To import and use `withMaxFiberOps` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withMaxFiberOps
```

**Signature**

```ts
export declare const withMaxFiberOps: {
  (ops: number): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, ops: number): Effect<R, E, B>
}
```
