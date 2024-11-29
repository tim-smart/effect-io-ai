# bindAll

`bindAll` combines `all` with `bind`. It is useful
when you want to concurrently run multiple effects and then combine their
results in a Do notation pipeline.

To import and use `bindAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.bindAll
```

**Example**

```ts
import { Effect, Either, pipe } from "effect"

const result = pipe(
  Effect.Do,
  Effect.bind("x", () => Effect.succeed(2)),
  Effect.bindAll(
    ({ x }) => ({
      a: Effect.succeed(x),
      b: Effect.fail("oops")
    }),
    { concurrency: 2, mode: "either" }
  )
)
assert.deepStrictEqual(Effect.runSync(result), { x: 2, a: Either.right(2), b: Either.left("oops") })
```

**Signature**

```ts
export declare const bindAll: {
  <
    A extends object,
    X extends Record<string, Effect<any, any, any>>,
    O extends {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly mode?: "default" | "validate" | "either" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  >(
    f: (a: NoInfer<A>) => [Extract<keyof X, keyof A>] extends [never] ? X : `Duplicate keys`,
    options?: undefined | O
  ): <E1, R1>(
    self: Effect<A, E1, R1>
  ) => [All.ReturnObject<X, false, All.ExtractMode<O>>] extends [Effect<infer Success, infer Error, infer Context>]
    ? Effect<
        { [K in keyof A | keyof Success]: K extends keyof A ? A[K] : K extends keyof Success ? Success[K] : never },
        E1 | Error,
        R1 | Context
      >
    : never
  <
    A extends object,
    X extends Record<string, Effect<any, any, any>>,
    O extends {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly mode?: "default" | "validate" | "either" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    },
    E1,
    R1
  >(
    self: Effect<A, E1, R1>,
    f: (a: NoInfer<A>) => [Extract<keyof X, keyof A>] extends [never] ? X : `Duplicate keys`,
    options?:
      | undefined
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly mode?: "default" | "validate" | "either" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
  ): [All.ReturnObject<X, false, All.ExtractMode<O>>] extends [Effect<infer Success, infer Error, infer Context>]
    ? Effect<
        { [K in keyof A | keyof Success]: K extends keyof A ? A[K] : K extends keyof Success ? Success[K] : never },
        E1 | Error,
        R1 | Context
      >
    : never
}
```
