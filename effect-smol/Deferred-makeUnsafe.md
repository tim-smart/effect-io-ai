Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.makeUnsafe

Synchronously creates an empty `Deferred` outside the `Effect` runtime.

**When to use**

Use to allocate a `Deferred` synchronously when direct allocation outside
`Effect` is required.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L206)

Since v4.0.0