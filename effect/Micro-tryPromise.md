# tryPromise

Wrap a `Promise` into a `Micro` effect. Any errors will be caught and
converted into a specific error type.

To import and use `tryPromise` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.tryPromise
undefined

**Example**

```ts
import { Micro } from "effect"

Micro.tryPromise({
  try: () => Promise.resolve("success"),
  catch: (cause) => new Error("caught", { cause })
})
```

**Signature**

```ts
export declare const tryPromise: <A, E>(options: {
  readonly try: (signal: AbortSignal) => PromiseLike<A>
  readonly catch: (error: unknown) => E
}) => Micro<A, E>
```
