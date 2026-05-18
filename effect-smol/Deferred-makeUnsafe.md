Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.makeUnsafe

Synchronously creates an empty `Deferred` outside the `Effect` runtime.

Prefer `Deferred.make` in effectful code so allocation is represented in
`Effect`; use this only when direct synchronous allocation is required.

**Example** (Creating a Deferred unsafely)

```ts
import { Deferred } from "effect"

const deferred = Deferred.makeUnsafe<number>()
console.log(deferred)
```

**Signature**

```ts
declare const makeUnsafe: <A, E = never>() => Deferred<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L195)

Since v2.0.0