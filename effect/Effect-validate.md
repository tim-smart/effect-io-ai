# validate

Sequentially zips the this result with the specified result. Combines both
`Cause`s when both effects fail.

To import and use `validate` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.validate
```

**Signature**

```ts
export declare const validate: {
  <B, E1, R1>(
    that: Effect<B, E1, R1>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[A, B], E1 | E, R1 | R>
  <A, E, R, B, E1, R1>(
    self: Effect<A, E, R>,
    that: Effect<B, E1, R1>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<[A, B], E | E1, R | R1>
}
```
