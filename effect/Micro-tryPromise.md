Package: `effect`<br />
Module: `Micro`<br />

## Micro.tryPromise

Wrap a `Promise` into a `Micro` effect. Any errors will be caught and
converted into a specific error type.

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
declare const tryPromise: <A, E>(options: { readonly try: (signal: AbortSignal) => PromiseLike<A>; readonly catch: (error: unknown) => E; }) => Micro<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1089)

Since v3.4.0