# zip

The `Effect.zip` function allows you to combine two effects into a single
effect. This combined effect yields a tuple containing the results of both
input effects once they succeed.

Note that `Effect.zip` processes effects sequentially: it first completes the
effect on the left and then the effect on the right.

If you want to run the effects concurrently, you can use the `concurrent` option.

To import and use `zip` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.zip
```

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const task3 = Effect.zip(task1, task2)

Effect.runPromise(task3).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// [ 1, 'hello' ]
```

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const task3 = Effect.zip(task1, task2, { concurrent: true })

Effect.runPromise(task3).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task2 done"
// timestamp=... level=INFO fiber=#0 message="task1 done"
// [ 1, 'hello' ]
```

**Signature**

```ts
export declare const zip: {
  <A2, E2, R2>(
    that: Effect<A2, E2, R2>,
    options?:
      | { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[A, A2], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    that: Effect<A2, E2, R2>,
    options?:
      | { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined }
      | undefined
  ): Effect<[A, A2], E | E2, R | R2>
}
```
